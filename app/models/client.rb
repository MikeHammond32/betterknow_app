class Client < ApplicationRecord
  belongs_to :users
  has_many :ratings
end
