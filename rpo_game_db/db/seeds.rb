User.create(id:1,username:'snoopdog',email:'snoopdog@gmail.com', password:'snoopy7', password_confirmation:'snoopy7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:1,level_id:1)
User.create(id:2,username:'snooplion',email:'snooplion@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:2,level_id:2)

Level.create(id:1,name:"Dog City")
Level.create(id:2,name:"Lion City")

Character.create(id:1,name:'Whiz',photo_url:'//placekitten.com/30/30',enemy_id:1,skill:'math')
Character.create(id:2,name:'Cheez',photo_url:'//placekitten.com/30/30',enemy_id:2,skill:'code')

Enemy.create(id:1,name:'Phiz',photo_url:'//placekitten.com/30/30')
Enemy.create(id:2,name:'Sneez',photo_url:'//placekitten.com/30/30')

Friendship.create(user_id: 1, friend_id:2)
