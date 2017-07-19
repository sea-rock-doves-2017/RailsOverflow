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
      expect(assigns[:questions]).to eq(Question.all)
    end
    it 'renders the :index template' do
      expect(response).to render_template :index
    end
  end

  describe 'GET show' do
    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end
    it 'assigns the correct question as @question' do
      get :show, params: { id: quizikal.id }
      expect(assigns[:question]).to eq quizikal
    end
    it 'renders the :show template' do
      get :show, params: { id: quizikal.id }
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    it 'responds with status code 200'
    it 'assigns a new question to @question'
    it 'renders the :new template'
  end

end
