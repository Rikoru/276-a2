class IndexController < ApplicationController
    def export
        @person = Person.find(params[:id]) 
    end
end
