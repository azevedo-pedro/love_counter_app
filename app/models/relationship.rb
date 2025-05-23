class Relationship < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy

  def duration_in_days
    (Date.today - start_date).to_i
  end
  
end
