class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: :Airport
  belongs_to :arrival_airport, class_name: :Airport

  def self.dates
    self.pluck(:departure_time).map { |date| date.strftime("%Y-%m-%d") }.uniq
  end
end
