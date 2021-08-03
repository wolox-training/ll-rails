class OpenLibraryController < ApplicationController
    def show
        # book = OpenLibrary.getBook('0385472579')
        # book = OpenLibrary.getBook('0140328726')
        book = OpenLibrary.getBook(params[:id])
        render json: book
    end
end