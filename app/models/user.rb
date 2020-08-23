# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  has_many :article_likes, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true
  # ※ email と password に関する validation は devise_token_auth のデフォルトを使用することとしたので、上記には追加しなかった。
end
