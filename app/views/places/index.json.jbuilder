json.array!(@places) do |place|
  json.extract! place, :id, :business_name, :address_1, :address_2, :city, :state, :zip_code, :phone_number, :website, :about, :user_id, :claimed
  json.url place_url(place, format: :json)
end
