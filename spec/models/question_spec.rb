require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:quizikal) { Question.new }
  describe '.recent' do

    it 'displays empty collections if no questions have been created' do
      expect(Question.recent).to be_empty
    end

    it 'displays collection of recent questions that have been created'

  end

end
