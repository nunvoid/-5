require 'json'

# Зчитування JSON-файлу
file = File.read('users.json')
users = JSON.parse(file)

# Перевірка, що дані дійсно масив
if users.is_a?(Array)
  total_age = 0
  puts "--- Список користувачів ---"
  users.each do |user|
    name = user["name"]
    age = user["age"]
    puts "Name: #{name}, Age: #{age}"
    total_age += age
  end
  if users.any?
    average_age = total_age.to_f / users.length
    puts "\nСередній вік: #{average_age.round(2)}"
  end
else
  puts "JSON не містить масиву користувачів."
end