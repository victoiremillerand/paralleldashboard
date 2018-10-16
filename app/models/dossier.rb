class Dossier < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
  validates :open, presence: true
  validates :status, inclusion: { in: ['Ouvert', 'Archivé'] }, presence: true
  validates :nature, inclusion: { in: ['Abonnement', 'Forfait'] }, presence: true
  validates :client_id, presence: true
end
