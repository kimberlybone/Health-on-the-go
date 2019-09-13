class UserRepo < ApplicationRecord
  has_many :video_repos
  has_many :videos, through: :video_repos
  has_many :recipe_repos
  has_many :recipes, through: :recipe_repos
  has_many :event_repos
  has_many :events, through: :event_repos
  has_many :relaxation_repos
  has_many :relaxations, through: :relaxation_repos
  has_many :reminder_repos
  has_many :reminders, through: :reminder_repos
  # delegate :reminders, to: :user
  belongs_to :user

  after_initialize :default_values

  # validates :user_presence, on: :create

  def users_presence
     errors.add(:users, "You must add at least one book") unless books.present?
  end

  private

  def default_values
    self.recipes ||= "Recipes"
    self.videos ||= "Videos"
    self.events ||= "Events"
  end
end
