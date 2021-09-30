class Service < ApplicationRecord
  validates :name, :operational, presence: true
  validates :name, uniqueness: true
end
