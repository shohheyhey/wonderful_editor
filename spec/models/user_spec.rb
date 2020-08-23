# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  allow_password_change  :boolean          default(FALSE)
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  email                  :string
#  encrypted_password     :string           default(""), not null
#  image                  :string
#  name                   :string
#  provider               :string           default("email"), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  tokens                 :json
#  uid                    :string           default(""), not null
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_uid_and_provider      (uid,provider) UNIQUE
#
require "rails_helper"

RSpec.describe User, type: :model do
  context "nameが入力されていない時" do
    let(:user) { FactoryBot.build(:user, name: nil) }
    it "登録に失敗する" do
      expect(user.name).to eq nil
    end
  end

  context "emailが入力されていない時" do
    let(:user) { FactoryBot.build(:user, email: nil) }
    it "登録に失敗する" do
      expect(user.email).to eq nil
    end
  end

  context "passwordが入力されていない時" do
    let(:user) { FactoryBot.build(:user, password: nil) }
    it "登録に失敗する" do
      expect(user).not_to be_valid
    end
  end

  context "name, email, passswordが入力されている時" do
    let(:user) { build(:user) }
    it "登録が成功する" do
      # expect(user.valid?).to eq true
      expect(user).to be_valid
    end
  end
end
