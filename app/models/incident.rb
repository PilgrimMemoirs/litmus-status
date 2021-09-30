class Incident < ApplicationRecord
  validates :title, :impact, :happended_at, presence: true

  has_many :updates
  has_many :service_incidents
  has_many :services, :through => :service_incidents
end
