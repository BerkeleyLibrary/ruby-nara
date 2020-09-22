class NaraCasefileController < ApplicationController
  def index
	@lastname =  NaraCasefile.find(281960).LASTNAME
  end
end
