class SearchesController < ApplicationController
    before_action :authenticate_user!
    
    def search
        @model = params[:model]
        @content = params[:content]
        @method = params[:method]
        if @model == 'User'
            @users = User.looks(params[:content], params[:method])
        else
            @books = Book.looks(params[:content], params[:method])
        end
    end
end
