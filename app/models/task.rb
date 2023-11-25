class Task < ApplicationRecord
  belongs_to :user

  enum :status, %w[initial in_progress completed], prefix: true

  after_save_commit :update_user_level!

  def update_user_level!
    return unless saved_change_to_status?

    if status_completed?
      user.level += 1
      user.save!
    end
  end
end
