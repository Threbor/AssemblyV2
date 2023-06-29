class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :storyroom_user_associations
  has_many :storyrooms, through: :storyroom_user_associations
  has_many :storyrooms
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
