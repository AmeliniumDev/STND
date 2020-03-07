class Task < ApplicationRecord
  attr_accessor :original_page, :referrer_page
  belongs_to :user, optional: true
  belongs_to :team

  # validates :title, presence: true
  # validates :deadline, presence: true
  # validates :etc, presence: true
end
