user1=User.create(id:1,username:'snoopdog',email:'snoopdog@gmail.com', password:'snoopy7', password_confirmation:'snoopy7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:1,level_id:1)
user2=User.create(id:2,username:'snooplion',email:'snooplion@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "//placekitten.com/30/30",time_played:10,character_id:2,level_id:2)
user3=User.create(id:3,username:'jamba',email:'jamba@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "//placekitten.com/30/30",time_played:20,character_id:3,level_id:3)

level1=Level.create(id:1,name:"Dog City")
level2=Level.create(id:2,name:"Lion City")
level3=Level.create(id:3,name:'Tiger City')
level4=Level.create(id:4,name:'Snail City')
level5=Level.create(id:5,name:'Donkey Town')
level6=Level.create(id:6,name:'Ostrich Land')
level7=Level.create(id:7,name:'Cheetah Park')
level8=Level.create(id:8,name:'Leopard Way')

character1=Character.create(id:1,name:'Parzival',photo_url:'//placekitten.com/30/30',skill:'code')
character2=Character.create(id:2,name:'Aech',photo_url:'//placekitten.com/30/30',skill:'bravery')
character3=Character.create(id:3,name:'Art3mis',photo_url:'//placekitten.com/30/30',skill:'sass')

enemy1=Enemy.create(id:1,name:'IOI-#655321',photo_url:'//placekitten.com/30/30',character_id:1)
enemy2=Enemy.create(id:2,name:'IOI-#655341',photo_url:'//placekitten.com/30/30',character_id:2)
enemy3=Enemy.create(id:3,name:'IOI-#655371',photo_url:'//placekitten.com/30/30',character_id:3)

friendship1=Friendship.create(user_id: 1, friend_id:2)

game1=Game.create(id:1, name: 'Mastermind',photo_url:'//placekitten.com/30/30',points:10)
game2=Game.create(id:2, name: 'War Games',photo_url:'//placekitten.com/30/30',points:15)
game3=Game.create(id:3, name: 'Black Dragon',photo_url:'//placekitten.com/30/30',points:20)

user3.characters<<character3
user2.characters<<character3
user2.characters<<character2

game1.users<<user2
game2.users<<user1

level1.games<<game1
level1.games<<game2
level2.games<<game3
level3.games<<game1
level4.games<<game2
level5.games<<game1
level6.games<<game3
level7.games<<game1

character1.levels << level1 << level2 << level3
character2.levels << level4 << level5 << level6
character3.levels << level7 << level8

# user1.levels << level6
# user1.levels << level3
# user1.levels << level1
# user2.levels << level2
# user2.levels << level1
# user3.levels << level4
# user3.levels << level5

