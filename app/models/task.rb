class Task < ApplicationRecord
  validates :title, :details, presence: false
end
