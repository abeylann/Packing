require 'rails_helper'

describe ListsController, :type => :controller do
	describe "GET index" do
		it "gets the index view" do
			get :index
			expect be_successful
			expect(response).to render_template("index")
		end

	end

	describe "GET show" do
		it "gets the show view" do
			get :show, place_id: '3'
			expect(response).to render_template("show")
		end
	end
end