class RelaxationRepo < ApplicationRecord
  belongs_to :user_repo
  belongs_to :relaxation
end
