# user1=User.create(id:1,username:'snoopdog',email:'snoopdog@gmail.com', password:'snoopy7', password_confirmation:'snoopy7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:1,level_id:1,score:10)
# user2=User.create(id:2,username:'snooplion',email:'snooplion@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:2,level_id:2,score:0)
# user3=User.create(id:3,username:'jamba',email:'jamba@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "//placekitten.com/30/30",time_played:20,character_id:3,level_id:3,score:200)

# level1=Level.create(id:1,name:"Dog City")
# level2=Level.create(id:2,name:"Lion City")

# character1=Character.create(id:1,name:'Whiz',photo_url:'//placekitten.com/30/30',skill:'math')
# character2=Character.create(id:2,name:'Cheez',photo_url:'//placekitten.com/30/30',skill:'code')
# character3=Character.create(id:3,name:'Jambaz',photo_url:'//placekitten.com/30/30',skill:'code')

# enemy1=Enemy.create(id:1,name:'Phiz',photo_url:'//placekitten.com/30/30',character_id:1)
# enemy2=Enemy.create(id:2,name:'Sneez',photo_url:'//placekitten.com/30/30',character_id:2)
# enemy3=Enemy.create(id:3,name:'Snooz',photo_url:'//placekitten.com/30/30',character_id:3)

# friendship1=Friendship.create(user_id: 1, friend_id:2)

# game1=Game.create(id:1, name: 'Jam Wars',photo_url:'//placekitten.com/30/30',points:10)
# game2=Game.create(id:2, name: 'Jam Wars',photo_url:'//placekitten.com/30/30',points:10)

# user3.characters<<character3
# user2.characters<<character3
# user2.characters<<character2

# user2.games<<game1
# game2.users<<user1

# game1.levels<<level1
# level1.games<<game2

# level7=Level.create(id:7,name:'Level 1')
# level8=Level.create(id:8,name:'Level 2')
# level3=Level.create(id:3,name:'Level 3')
# level4=Level.create(id:4,name:'Level 4')
# level5=Level.create(id:5,name:'Level 5')
# level6=Level.create(id:6,name:'Level 6')

# level4.characters << character2
# level5.characters << character3
# level6.characters << character1
# character1.levels << level3
# character2.levels << level2
# character3.levels << level1

