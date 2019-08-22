#rooms
room1 = Room.new(owner_name: "Randy",room_type: "finance", thumbnail_text: "Finance Group for Koreans", name: "Korean Finance Group", head_count: 10, confirmed_revenue: 1700, room_price: 10, description:"")
room1.save
room2 = Room.new(owner_name: "Hoss",room_type: "sports", thumbnail_text: "Swedish Hockey", name: "Swedish Hockey Group", head_count: 12, confirmed_revenue: 800, room_price: 10, description:"")
room2.save
room3 = Room.new(owner_name: "Doug",room_type: "politics", thumbnail_text: "Righty Group for Conservatives", name: "Neo-Con Group", head_count: 15, confirmed_revenue: 170, room_price: 10, description:"Get angry about people not paying enough taxes")
room3.save
room4 = Room.new(owner_name: "Skeeter",room_type: "gambling", thumbnail_text: "Texas Hold'em Poker", name: "Hold'em with Randy ", head_count: 16, confirmed_revenue: 900, room_price: 10, description:"")
room4.save
room5 = Room.new(owner_name: "Ruby",room_type: "politics", thumbnail_text: "Lefty Group for Libs", name: "Left Group", head_count: 17, confirmed_revenue: 600, room_price: 10, description:"Get angry about people not paying enough taxes")
room5.save
