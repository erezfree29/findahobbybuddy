class Message < ApplicationRecord
  has_one :receving_buddie_id_
  has_one :sending_buddie_id
  validates :content,presence: true
end
