Place.delete_all
List.delete_all


  city = Place.create(name: 'City')
  beach = Place.create(name: 'Beach')
  forest = Place.create(name: 'Forest')
  skiing = Place.create(name: 'Skiing')

basic = '{Shoes, Makeup}'
summer = '{Hat, Sunglasses}'
winter = '{Scarf, Gloves }'
forestt = '{Boots, Coat, Hat}'

  list1 = List.create(items: basic, place_id: city.id)
  list2 = List.create(items: summer, place_id: beach.id)
  list3 = List.create(items: winter, place_id: skiing.id)
  list4 = List.create(items: forestt, place_id: forest.id)

