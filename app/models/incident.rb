class Incident < ApplicationRecord
  validates :title, :impact, :happended_at, presence: true
end
