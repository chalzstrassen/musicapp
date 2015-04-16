class Track < ActiveRecord::Base
  validates :single, inclusion: { in: %w(Bonus Regular), allow_nil: true}

  belongs_to :album
end
