json.array!(@users) do |user|
  json.extract! user, :index, :edit, :show, :update, :add
  json.url user_url(user, format: :json)
end
