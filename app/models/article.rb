class Article < ApplicationRecord
  enum :status, ['draft', 'published', 'inactive']

  belongs_to :user

  validates :title, presence: true

  has_rich_text :description, encrypted: true
end
