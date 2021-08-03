class OpenLibraryController < ApplicationController
    def show
        # book = OpenLibrary.getBook('0385472579')
        # book = OpenLibrary.getBook('0140328726')
        book = OpenLibrary.getBook(params[:id])
        book = book["ISBN:#{params[:id]}"]
        authors = []
        book['authors'].each { |author|
            authors.push(author['name'])
        }
        book_new = {
            "ISBN" => params[:id],
            "title" => book['title'],
            "authors" => authors,
            "number_of_pages"  => book['number_of_pages'],
            "url" => book['url']
        }
        render json: book_new
    end
end