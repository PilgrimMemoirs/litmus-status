class Service < ApplicationRecord
  validates :name, :operational, presence: true
  validates :name, uniqueness: true

  has_many :service_incidents
  has_many :incidents, :through => :service_incidents, dependent: :destroy
end
