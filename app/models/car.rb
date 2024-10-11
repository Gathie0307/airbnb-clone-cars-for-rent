class Car < ApplicationRecord
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :search_by_title_and_brand_and_year,
  against: [ :brand, :model, :year ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
