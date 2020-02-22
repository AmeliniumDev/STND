class Team < ApplicationRecord
  belongs_to :company

  has_many :users
  has_many :tasks, dependent: :destroy

  # validates :team_name, uniqueness: true, presence: true
end
