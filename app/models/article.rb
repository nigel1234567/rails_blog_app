class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  # Validations
  validates :title, presence: true # Title value must be present
  validates :body, presence: true, length: { minimum: 10 } # Body value must be present and at least 10 characters long

end
