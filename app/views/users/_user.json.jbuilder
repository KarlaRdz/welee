json.extract! user, :id, :name, :lastName, :phone, :typeu, :street, :exterior_number, :interior_number, :city, :state, :zip, :created_at, :updated_at
json.url users_admin_url(user, format: :json)
