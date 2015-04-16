class Track < ActiveRecord::Base
  validates :single, inclusion: { in: %(Bonus Regular), allow_nil: true}

  belongs_to :album
end
