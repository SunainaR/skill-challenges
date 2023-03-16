require 'check_todo'

RSpec.describe "check_todo method" do
  context "given an empty string" do
    it "raises an error" do
      expect { check_todo("") }.to raise_error "No text provided."
    end
  end

  context "given a string with mutiple words or characters" do
    it 'returns true for a string with "#TODO"' do
      result = check_todo("#TODO Take the dog for a walk")
      expect(result).to eq true
    end

    it 'returns false for hashtag in camelcase' do
      result = check_todo("#Todo Play with the cats")
      expect(result).to eq false
    end

    it 'returns false for hashtag in lowercase' do
      result = check_todo("#todoismyfavouriteanimal")
      expect(result).to eq false
    end

    it 'returns true for no spaces' do
      result = check_todo("#TODOornottodo")
      expect(result).to eq true
    end

    it 'returns true for hashtag at end' do
      result = check_todo("get some shopping #TODO")
      expect(result).to eq true
    end

    it 'returns true for hashtag surrounded by text' do
      result = check_todo("pickels #TODO play the drums")
      expect(result).to eq true
    end

    it 'returns false for space within hashtag' do
      result = check_todo("pick up the #TO DO penguins")
      expect(result).to eq false
    end

    it 'returns true for just hashtag' do
      result = check_todo("#TODO")
      expect(result).to eq true
    end
  end
end