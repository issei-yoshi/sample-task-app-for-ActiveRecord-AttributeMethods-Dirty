class Task < ApplicationRecord
  belongs_to :user

  enum :status, %w[initial in_progress completed]
end
