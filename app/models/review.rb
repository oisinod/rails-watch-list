class Review < ApplicationRecord
  belongs_to :list
  validates :content, :name, presence: true
end
