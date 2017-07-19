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
    before(:each) do
      get :show, params: { id: quizikal.id }
    end
    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end
    it 'assigns the correct question as @question' do
      expect(assigns[:question]).to eq quizikal
    end
    it 'renders the :show template' do
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    before(:each) do
      get :new
    end
    it 'responds with status code 200' do
      expect(response.status).to eq 200
    end
    it 'assigns a new question to @question' do
      expect(assigns[:question]).to be_a_new Question
    end
    it 'renders the :new template' do
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    context 'when valid params are passed' do
      before(:each) do
        post :create, params: { question: { title: 'Hello', content: 'There', user_id: 2 } }
      end
      it 'responds with status code 302' do
        expect(response.status).to eq 302
      end
      it 'creates a new question in the database'
      it 'assigns the newly created question as @question'
      it 'sets a notice that the question was successully created'
      it 'redirects to the created question'

    end
  end

end
