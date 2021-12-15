json.extract! concert, :id, :datetime, :duration, :assitants, :created_at, :updated_at
json.url concert_url(concert, format: :json)
