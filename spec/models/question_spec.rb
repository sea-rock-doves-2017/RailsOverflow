require 'rails_helper'

RSpec.describe Question, type: :model do
  let!(:quizikal) { FactoryGirl.build(:question) }

  describe '.all' do
    it 'displays empty collections if no questions have been created' do
      expect(Question.all).to be_empty
    end
    it 'displays collection of all questions that have been created' do
      expect(Question.all.length).to eq 1
    end
  end

end
