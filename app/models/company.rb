class Company < ApplicationRecord
  has_many :teams, dependent: :destroy
  # validates :name, uniqueness: true, presence: true
end
