require 'rails_helper'

describe QuestionsController do
  let!(:quizikal) { FactoryGirl.create(:question) }

  describe 'GET #index' do
    before(:each) do
      get :index
    end
    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end
    it 'assigns recent questions as @questions' do
      expect(assigns[:question]).to eq(Question.all)
    end
    it 'renders the :index template'

  end

end
