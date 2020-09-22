class SearchCasefilesController < ApplicationController
	def index
        @lastname =  NaraCasefile.find(281960).LASTNAME
  end

	def new
		@searchcase = SearchCasefile.new
	end

	def create
		@params = SearchCasefile.new(params[:searchcase])
		if(@params)
			render :text => params.inspect
		end
	end

	def show
			render :text => params.inspect
	end
end
