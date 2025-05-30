class Relationship < ApplicationRecord
  belongs_to :user
  has_many :photos, dependent: :destroy


  def duration_parts
    total_seconds = (Time.zone.now - start_date.to_time).to_i

    days = total_seconds / (3600 * 24)
    hours = (total_seconds % (3600 * 24)) / 3600
    minutes = (total_seconds % 3600) / 60
    seconds = total_seconds % 60

    { days: days, hours: hours, minutes: minutes, seconds: seconds }
  end
end
