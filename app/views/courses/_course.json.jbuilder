json.extract! course, :id, :name, :duration_in_months, :created_at, :updated_at
json.url course_url(course, format: :json)
