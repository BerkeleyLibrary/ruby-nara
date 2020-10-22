# frozen_string_literal: true

class SearchcaseController < ApplicationController
  def display
    require 'will_paginate/array'
    @result = if !params[:q].nil?
                params[:q]
              else
                ''
              end
    @result.gsub "'", '*'
    @result.gsub '+', ''
    @result.gsub '-', ''
    @result = word_less_than_four(@result)
    @queryCount = @result.split.count

    @return = if @result.empty?
                SearchCasefile.all.order(:LASTNAME, :FIRSTNAME)
              else
                SearchCasefile
                  .find_by_sql(['select *, MATCH(LASTNAME,FIRSTNAME,DESTINATION,' +
                  'BIRTHPLACE,PORT,DATE,SHIP) AGAINST(:search in boolean mode) as' +
                  ' matchcount from NARA_CaseFiles where MATCH(LASTNAME,FIRSTNAME' +
                  ',DESTINATION,BIRTHPLACE,PORT,DATE,SHIP) AGAINST(:search in boolean ' +
                  "mode) = #{@queryCount} order by LASTNAME,FIRSTNAME", { search: @result }])
              end

    @return = @return.paginate(page: params[:page], per_page: 100)

    if @return.empty?
      flash[:notice] = 'Your query returned 0 results. please try another search term'
      redirect_to action: :search
    end
  end

  def full_display
    @result = params[:data]
    @return = SearchCasefile
              .where('Case_ID = ?', @result)
              .select(:LASTNAME, :FIRSTNAME,
                      :MIDDLENAME,
                      :BOXNUMBER,
                      :SERIES,
                      :CASENUMBER,
                      :SHIP,
                      :DATE,
                      :DESTINATION,
                      :BIRTHPLACE,
                      :BIRTHPLACE_CITY,
                      :BIRTHPLACE_STATE,
                      :DOB,
                      :AGE,
                      :GENDER,
                      :AFILENUM,
                      :CLASS,
                      :DISPOSITION_OF_CASE,
                      :ST_BORN, :HOUSE_NUM,
                      :OTHERNAMEL,
                      :OTHERNAMEF,
                      :OTHERNAMEM,
                      :CERTIFICATE_OF_RESIDENCE,
                      :CERTIFICATE_OF_IDENTITY,
                      :RED_EAGLE_CERTIFICATE,
                      :COURT_RECORD,
                      :REMARKS,
                      :PORT,
                      :SOURCE,
                      :COMPANY,
                      :DATE_ENTERED)
  end

  def word_less_than_four(query)
    query_arr = query.split(' ')
    query_arr.each do |word|
      word << '*' if word.size < 4
    end

    @query = query_arr.join(' ').to_s
  end
end
