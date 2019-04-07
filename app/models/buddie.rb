class Buddie < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to:user
  # validates :user_id, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
