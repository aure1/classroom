json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :name, :description
  json.url homework_url(homework, format: :json)
end
