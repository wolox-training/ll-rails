require 'httparty' # Imporante

class OpenLibrary
    # services/openlibrary.rb
    
    # include HTTParty
    # base_uri 'openlibrary.org/api/books'

    # response = HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:0385472579&format=json&jscmd=data')
    # puts response.body, response.code, response.message, response.headers.inspect

    # include HTTParty

    # id del libro 0385472579
    def self.getBook(isbn)
        response = HTTParty.get("https://openlibrary.org/api/books?bibkeys=ISBN:#{isbn}&format=json&jscmd=data")
    end

end

# puts OpenLibrary.getBook('0385472579').message
