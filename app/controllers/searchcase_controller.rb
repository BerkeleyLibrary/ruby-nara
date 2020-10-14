class SearchcaseController < ApplicationController
  def display
    require 'will_paginate/array'
     @result = params[:q]
     @result.gsub! "'","*"
     @result.gsub! "+",""
     @result.gsub! "-",""
     @result = word_less_than_four(@result)
     @queryCount = @result.split.count

      if @result.empty?
        @return = SearchCasefile.all.order(:LASTNAME,:FIRSTNAME)
      else
        @return = SearchCasefile.find_by_sql(["select *, MATCH(LASTNAME,FIRSTNAME,DESTINATION,BIRTHPLACE,PORT,DATE,SHIP) AGAINST(:search in boolean mode) as matchcount from NARA_CaseFiles where MATCH(LASTNAME,FIRSTNAME,DESTINATION,BIRTHPLACE,PORT,DATE,SHIP) AGAINST(:search in boolean mode) = #{@queryCount} order by LASTNAME,FIRSTNAME",{:search => @result}])
      end

    @return = @return.paginate(page: params[:page], per_page: 100)

    if @return.empty?
            flash[:notice] = 'You\'re query returned 0 results. please try another search term'
            redirect_to :action => :search
    end
  end

    def fullDisplay
            @result = params[:data]
            @return = SearchCasefile.where("Case_ID = ?",@result).select(:LASTNAME,:FIRSTNAME,:MIDDLENAME,:BOXNUMBER,:SERIES,:CASENUMBER,:SHIP,:DATE,:DESTINATION,:BIRTHPLACE,:BIRTHPLACE_CITY,:BIRTHPLACE_STATE,:DOB,:AGE,:GENDER,:AFILENUM,:CLASS,:DISPOSITION_OF_CASE,:ST_BORN,:HOUSE_NUM,:OTHERNAMEL,:OTHERNAMEF,:OTHERNAMEM,:CERTIFICATE_OF_RESIDENCE,:CERTIFICATE_OF_IDENTITY,:RED_EAGLE_CERTIFICATE,:COURT_RECORD,:REMARKS,:PORT,:SOURCE,:COMPANY,:DATE_ENTERED)
    end

        rescue_from ActiveRecord::RecordNotFound do
          flash[:notice] = 'You\'re qurey returned 0 results. please try another search term'
          redirect_to :action => :search
        end

        def recordNotFound
        end



  #for mysql full text search add wildcard if word is less than four characters (minimum match for fulltext)
  def word_less_than_four(query)
    queryArr = query.split(' ')
    queryArr.each do |word|
      if word.size < 4
        word << "*"
      end
    end

    @query = queryArr.join(' ').to_s
  end
end

