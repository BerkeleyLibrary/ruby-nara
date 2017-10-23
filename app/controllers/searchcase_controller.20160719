class SearchcaseController < ApplicationController
  def search
		
  end

  def display
		@result = params[:q]
		@result.gsub! "*","%"	
		@result = "%" + @result.to_s + "%"
		#@lastname = SearchCasefile.where("state = ? and city= ?" ,params[:state], params[:city])
#		@return = SearchCasefile.where("LASTNAME like ? or FIRSTNAME like ? or DESTINATION like ? or BIRTHPLACE like ? or PORT like ? or date like ? or Case_ID like ? or ship like ?" ,@result,@result,@result,@result,@result,@result,@result,@result).select(:LASTNAME,:FIRSTNAME,:MIDDLENAME,:AGE,:GENDER,:date,:Case_ID,:PORT,:ship,:destination).order(:LASTNAME,:FIRSTNAME)

		@return = SearchCasefile.where("LASTNAME like ? or FIRSTNAME like ? or DESTINATION like ? or BIRTHPLACE like ? or PORT like ? or date like ? or Case_ID like ? or ship like ?" ,@result,@result,@result,@result,@result,@result,@result,@result).order(:LASTNAME,:FIRSTNAME)

		@return = @return.paginate(page: params[:page], per_page: 100)		

		if @return.empty?
			 flash[:notice] = 'You\'re query returned 0 results. please try another search term'
			 redirect_to :action => :search
		end			 

#		@something = SearchCasefile.find(:all)
#		@something = @something.paginate(page: params[:page], per_page: 100)		

	
  end

	#In Progress
	def fullDisplay
		@result = params[:data]
		@return = SearchCasefile.where("Case_ID = ?",@result).select(:LASTNAME,:FIRSTNAME,:MIDDLENAME,:BOXNUMBER,:SERIES,:CASENUMBER,:SHIP,:DATE,:DESTINATION,:BIRTHPLACE,:BIRTHPLACE_CITY,:BIRTHPLACE_STATE,:DOB,:AGE,:GENDER,:AFILENUM,:CLASS,:DISPOSITION_OF_CASE,:ST_BORN,:HOUSE_NUM,:OTHERNAMEL,:OTHERNAMEF,:OTHERNAMEM,:CERTIFICATE_OF_RESIDENCE,:CERTIFICATE_OF_IDENTITY,:RED_EAGLE_CERTIFICATE,:COURT_RECORD,:REMARKS,:PORT,:SOURCE,:DATE_ENTERED)
		
	end


	rescue_from ActiveRecord::RecordNotFound do

  	flash[:notice] = 'You\'re qurey returned 0 results. please try another search term'
  #	render :not_found # or e.g. redirect_to :action => :index
  	redirect_to :action => :search
	end
	
	def recordNotFound
	end

end
