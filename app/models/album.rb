class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :band_id, presence: true
  validates :recording,
            inclusion: { in: %w(Studio Live), allow_nil: true}

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
