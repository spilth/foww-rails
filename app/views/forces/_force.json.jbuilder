json.extract! force, :id, :name, :description, :created_at, :updated_at
json.url force_url(force, format: :json)
