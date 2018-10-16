class Client < ApplicationRecord
  has_many :dossiers
  validates :name, presence: true
end
