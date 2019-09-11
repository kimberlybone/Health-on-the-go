class VideoRepo < ApplicationRecord
  belongs_to :video
  belongs_to :user_repo
end
