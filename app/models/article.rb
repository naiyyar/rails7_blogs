class Article < ApplicationRecord
  enum :status, ['draft', 'published', 'inactive']

  belongs_to :user

  has_rich_text :description, encrypted: true
end
