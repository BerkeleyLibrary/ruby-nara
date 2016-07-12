class NaraCasefileController < ApplicationController
  def index
#	render text:  NaraCasefile.find(281960).LASTNAME
	#render text:  NaraCasefile.where(:LASTNAME => 'CHANG')
#	@lastname = NaraCasefile.where(:LASTNAME => 'CHANG')
	@lastname =  NaraCasefile.find(281960).LASTNAME
  end
end
