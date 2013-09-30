json.array!(@user_managements) do |user_management|
  json.extract! user_management, 
  json.url user_management_url(user_management, format: :json)
end
