Place.delete_all
List.delete_all


  city = Place.create(name: 'City')
  beach = Place.create(name: 'Beach')
  forest = Place.create(name: 'Forest')
  skiing = Place.create(name: 'Skiing')

  list1 = List.create(items: 'basic')
  Beach = List.create(items: 'summer')
  list3 = List.create(items: 'winter')

# basic = {'"Shoes, Makeup"'}
# summer = {'"Hat, Sunglasses"'}
# winter = {'"Scarf, Gloves"' }