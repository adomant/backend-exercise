module TripsHelper
DAYS_OF_THE_WEEK = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa']

def days(trip)
  if trip.frequency.size == 7
    return 'Daily'
  else
    trip.frequency.map { |day| DAYS_OF_THE_WEEK[day] }.join(' ')
  end
end

def start_cities_for_select
  Trip.all()
    .map { |trip| trip.start_city_name }
    .uniq
end

def end_cities_for_select
  Trip.all()
    .map { |trip| trip.end_city_name }
    .uniq
end
end
