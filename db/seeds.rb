# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def make_data(file_name,model)
  File.open("data/#{file_name}") do |file|
    json = JSON.load(file)
    json.each do |getObject|
      time  = getObject['time']
      money = getObject['money']
      data = model.new({time:time,money:money})
      data.save
    end
  end
end

make_data('sunholiday.json',Sun)
make_data('saturday.json',Sat)
make_data('morning.json',Morning)
make_data('noon.json',Noon)
make_data('afternoon.json',Afternoon)