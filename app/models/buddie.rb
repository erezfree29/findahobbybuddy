class Buddie < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to:user
  validates :user_id, uniqueness: true
  validates :name,:countryname,:town,:age,:hobby ,presence: true
  mount_uploader :photo, PhotoUploader
   include PgSearch
   pg_search_scope :multy_search,
    against: [ :town, :gender,:age ,:hobby ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
