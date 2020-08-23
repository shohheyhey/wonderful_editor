require 'rails_helper'

RSpec.describe User, type: :model do
  context "nameが入力されていない時" do
    let(:user){FactoryBot.build(:user, name: nil)}
    it "登録に失敗する" do
      binding.pry
      expect(user.name).to eq nil
    end
  end

  context "emailが入力されていない時" do
    let(:user){FactoryBot.build(:user, email: nil)}
    it "登録に失敗する" do
      binding.pry
      expect(user.email).to eq nil
    end
  end

  context "passwordが入力されていない時" do
    let(:user){FactoryBot.build(:user, password: nil)}
    it "登録に失敗する" do
      binding.pry
      expect(user).not_to be_valid
    end
  end

  context "name, email, passswordが入力されている時" do
    let(:user){build(:user)}
    it "登録が成功する" do
      # binding.pry
      # expect(user.valid?).to eq true
      expect(user).to be_valid
    end
  end
end
