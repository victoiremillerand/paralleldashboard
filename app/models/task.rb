class Task < ApplicationRecord
  belongs_to :dossier
  validates :dossier, presence: true
end
