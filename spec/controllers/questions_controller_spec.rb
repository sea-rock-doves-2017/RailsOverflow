require 'rails-helper'

describe QuestionsController do

  describe 'GET #index' do
    before(:each) do
      get :index
    end

    it 'responds with status code 200'
    it 'assigns recent questions as @questions'
    it 'renders the :index template'

  end

end
