class Relationship < ApplicationRecord
  belongs_to :user

  def duration_in_days
    (Date.today - start_date).to_i
  end
  
end
