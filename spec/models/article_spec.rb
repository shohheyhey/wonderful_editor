require "rails_helper"

RSpec.describe Article, type: :model do
  context "titleが未入力の時" do
    let(:article) { build(:article, title: nil) }
    it "投稿に失敗する" do
      expect(article).not_to be_valid
    end
  end

  context "bodyが未入力の時" do
    let(:article) { build(:article, body: nil) }
    it "投稿が失敗する" do
      expect(article).not_to be_valid
    end
  end

  context "title, bodyが入力されている時" do
    let(:user) { create(:user) }
    let(:article) { build(:article, user_id: user.id) }
    it "投稿が成功する" do
      expect(article).to be_valid
    end
  end
end
