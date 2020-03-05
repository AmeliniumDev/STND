class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :team
  has_many :tasks
  has_one_attached :photo

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :manager, presence: true
end
