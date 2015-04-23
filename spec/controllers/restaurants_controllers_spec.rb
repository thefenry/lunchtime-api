require 'rails_helper'

RSpec.describe RestaurantsController, :type => :controller do

	let!(:restaurants){ create_list(:restaurant, 10) }
	context '#index' do
    it 'should successfully get index as json"' do
      get :index, :format => 'json'
      expect(response).to be_success
    end

    it 'should succesfully get index as xml"' do
      get :index, :format => 'xml'
      expect(response).to be_success
    end

    it 'should return the same amount of objects as the exist' do 
    	get :index, :format => 'json'
    	json = JSON.parse(response.body)
    	expect(json.length).to eq(10)
    end

    it 'should fail to return an empty json object' do 
    	get :index, :format => 'json'
    	json = JSON.parse(response.body)
    	expect(json.length).to_not eq(nil)
    end
  end
end