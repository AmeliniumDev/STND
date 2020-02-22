class Task < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :team

  # validates :title, presence: true
  # validates :deadline, presence: true
  # validates :etc, presence: true
end
