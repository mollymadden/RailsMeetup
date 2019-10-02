json.extract! meetup, :id, :eventdate, :creationdate, :location, :user_id, :title, :description, :category_id, :imageURL, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
