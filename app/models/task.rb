class Task < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company
  validates :title, presence: true
  validates :deadline, presence: true
  validates :etc, presence: true
end
