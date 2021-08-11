require 'rails_helper'


describe OpenLibraryController, :type => :controller do
  
  before do
    stubbed_service = instance_double(OpenLibrary)
    allow(OpenLibrary).to receive(:getBook).with('0140328726').and_return({ title: "Wolox Book", authors: ["leo", "jose", "isa"]})
  end

  describe "GET #show" do
    context "Sin errores" do
      it "Buscar libro" do
        get :show, params: { id: '0140328726'}
        expect(response).to have_http_status(200)
      end
    end
  end 

end