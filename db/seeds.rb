# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# counties
country_list = [
  "Russia",       #1
  "Italy",        #2
  "USA",          #3
  "France",       #4
  "Belgium",      #5
  "Netherlands"   #6
]

country_list.each do |country_name|
  Country.create( name: country_name )
end


# regions
region_list = [
  [ "Volgagradskaya", 1 ],  #1
  [ "Astrahanskaya", 1 ],   #2
  [ "Rostovskaya", 1 ],     #3
  [ "Saratovskaya", 1 ],    #4
  [ "Turinskaya", 2 ],      #5
  [ "Milanskaya", 2 ]       #6
]

region_list.each do |region_name, country_id|
  Region.create( name: region_name, country_id: country_id )
end


# cities
city_list = [
  [ "Volgagrad", 1 ],  #1
  [ "Volshskiy", 1 ],  #2
  [ "Kamishin", 1 ],   #3
  [ "Dubovka", 1 ],    #4
  [ "Turin", 5 ],      #5
  [ "Milan", 6 ],      #6
  [ "Inter", 6 ]       #7
]

city_list.each do |city_name, region_id|
  City.create( name: city_name, region_id: region_id )
end

# hostels
hostel_list = [
  [ "Hostel1", 1, 'City', 'address1', 'info1', 123 ],
  [ "Hostel2", 1, 'City', 'address2', 'info2', 345  ],
  [ "Hostel3", 1, 'City', 'address3', 'info3', 456  ],
  [ "Hostel4", 2, 'City', 'address4', 'info4', 47467  ],
  [ "Hostel5", 3, 'City', 'address5', 'info5', 65745  ],
  [ "Hostel6", 3, 'City', 'address6', 'info6', 123  ],
  [ "Hostel7", 5, 'City', 'address7', 'info7', 35  ],
  [ "Hostel8", 6, 'City', 'address8', 'info8', 345  ],
  [ "Hostel9", 6, 'City', 'address9', 'info9', 234  ],
  [ "Hostel10", 7, 'City', 'address10', 'info10', 234  ],
  [ "Hostel11", 1, 'Region', 'address11', 'info11', 567  ]
]

hostel_list.each do |city_name, id, type, address, info, average_price|
  Hostel.create( name: city_name, 
               location_id: id,
               location_type: type,
               address: address,
               info: info,
               average_price: average_price
              )
end
