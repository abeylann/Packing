Place.delete_all
List.delete_all


  city = Place.create(name: 'City')
  beach = Place.create(name: 'Beach')
  forest = Place.create(name: 'Forest')
  skiing = Place.create(name: 'Skiing')
  hackathon = Place.create(name: 'Hackathon')


basic = '{ Shampoo, Conditioner, Toothbrush, Toothpaste, Deodorant, Towel, Hairbrush,
			Phone Charger, Earphones,  ID, Underwear, Socks, PJs, Slippers}'
summer = '{ Hat, Sunglasses, Flip Flops, Bathing Suit, Sunscreen, Lip Balm,
			Hand Sanitizer, Body Lotion}'
winter = '{ Scarf, Gloves, Beanie, Coat, Cardigan, Boots, Blanket }'
forestt = '{ Boots, Coat, Raincoat, Wellie Boots, Sunscreen, Hand Sanitizer, 
			Sleeping bag, Blanket}'
hack = '{ Sleeping bag, Eye mask, Toothbrush, Toothpaste, Dry Shampoo, Hairbrush,
				Laptop Charger, Phone Charger, Headphones, Hand Sanitizer, Deodorant}'

  list1 = List.create(items: basic, place_id: skiing.id)
  list2 = List.create(items: summer, place_id: beach.id)
  list3 = List.create(items: winter, place_id: skiing.id)
  list4 = List.create(items: forestt, place_id: forest.id)
  list5 = List.create(items: hack, place_id: hackathon.id)
  list6 = List.create(items: basic, place_id: city.id)
  list7 = List.create(items: basic, place_id: beach.id)

