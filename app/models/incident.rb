class Incident < ApplicationRecord
  validates :title, :impact, :happended_at, presence: true

  has_many :updates, dependent: :destroy
  has_many :service_incidents, dependent: :destroy
  has_many :services, :through => :service_incidents
end
