class Task < ApplicationRecord
  validates :title, :details, completed: false
end
