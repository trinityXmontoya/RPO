# # user1=User.create(id:1,username:'snoopdog',email:'snoopdog@gmail.com', password:'snoopy7', password_confirmation:'snoopy7',photo_url: "http://www.biography.com/imported/images/Biography/Images/Profiles/S/Snoop-Dogg-197052-1-402.jpg",time_played:10,character_id:1,level_id:1)
# # user2=User.create(id:2,username:'snooplion',email:'snooplion@gmail.com', password:'lion7', password_confirmation:'lion7',photo_url: "http://assets-s3.usmagazine.com/uploads/assets/articles/54736-snoop-dogg-changes-name-to-snoop-lion-believes-hes-bob-marley-reincarnated/1343762840_snooplion-467.jpg",time_played:10,character_id:2,level_id:2)
# # user3=User.create(id:3,username:'vanillaice',email:'ice@gmail.com', password:'iceice7', password_confirmation:'iceice7',photo_url: "http://images.politico.com/global/blogs/110813_vanilla_ice_465_ap.jpg",time_played:20,character_id:3,level_id:3)

# # level1=Level.create(id:1,name:"Blade Runner")
# # level2=Level.create(id:2,name:"War Games")
# # level3=Level.create(id:3,name:'Weird Science')
# # level4=Level.create(id:4,name:'Short Circuit')
# # level5=Level.create(id:5,name:'Risky Business')
# # level6=Level.create(id:6,name:'2010')
# # level7=Level.create(id:7,name:'Fight Club')
# # level8=Level.create(id:8,name:'Mad Max')

# # character1=Character.create(id:1,name:'Parzival',photo_url:'http://th03.deviantart.net/fs70/PRE/i/2013/205/8/1/parzival_by_alexiel1910-d6evrcw.png',skill:'code')
# # character2=Character.create(id:2,name:'Aech',photo_url:'http://fc03.deviantart.net/fs71/i/2013/205/7/2/aech_by_alexiel1910-d6evswe.png',skill:'bravery')
# # character3=Character.create(id:3,name:'Art3mis',photo_url:'http://24.media.tumblr.com/a2d96acd9f469d589068ea71b3d06ee0/tumblr_mqfr27dH1b1qm6rfpo1_500.png',skill:'sass')
# # character4=Character.create(id:4,name:'Shoto',photo_url:'http://th02.deviantart.net/fs71/PRE/i/2013/205/c/1/shoto_by_alexiel1910-d6evtr0.png',skill:'honor')
# # character5=Character.create(id:5,name:'Daito',photo_url:'http://th00.deviantart.net/fs71/PRE/i/2013/205/9/d/daito_by_alexiel1910-d6evth1.png',skill:'loyalty')

# # Comment.create(user_id:3,author_id:1,content:'sorry for calling you a loser the other day, i always knew you had it in you to be a winner!')
# # Comment.create(user_id:1,author_id:3,content:"snoooop, what's up! long time no seeee")
# # Comment.create(user_id:2,author_id:2,content:'booya')
# # Comment.create(user_id:2,author_id:2,content:"BOOYA BABY!" )

# # enemy1=Enemy.create(id:1,name:'Sorrento',photo_url:'http://3.bp.blogspot.com/-WK6uP9z0EOs/TZyvY4YaHWI/AAAAAAAAB6M/KE75qctRnek/s1600/evil-robot.jpg',character_id:1)
# # enemy2=Enemy.create(id:2,name:'IOI-#655321',photo_url:'http://3.bp.blogspot.com/-WK6uP9z0EOs/TZyvY4YaHWI/AAAAAAAAB6M/KE75qctRnek/s1600/evil-robot.jpg',character_id:2)
# # enemy3=Enemy.create(id:3,name:'IOI-#655371',photo_url:'http://3.bp.blogspot.com/-WK6uP9z0EOs/TZyvY4YaHWI/AAAAAAAAB6M/KE75qctRnek/s1600/evil-robot.jpg',character_id:3)

# Enemy.find(3).character_id=2
# Enemy.find(2).character_id=3
# Enemy.create(id:4,name:'IOI-#655311',photo_url:'http://3.bp.blogspot.com/-WK6uP9z0EOs/TZyvY4YaHWI/AAAAAAAAB6M/KE75qctRnek/s1600/evil-robot.jpg',character_id:4)
# Enemy.create(id:5,name:'IOI-#655391',photo_url:'http://3.bp.blogspot.com/-WK6uP9z0EOs/TZyvY4YaHWI/AAAAAAAAB6M/KE75qctRnek/s1600/evil-robot.jpg',character_id:5)


# # game1=Game.create(id:1, name: 'Mastermind',photo_url:'http://www.thegrosslife.com/wp-content/uploads/2009/12/mastermind.jpg',points:20)
# # game2=Game.create(id:2, name: 'BattleShip',photo_url:'https://store.handmark.com/images/products/160/product160-s1.gif',points:15)
# # game3=Game.create(id:3, name: 'Tic Tac Toe',photo_url:'http://www.jumpthecurve.net/images/uploads/tic_tac_toe.gif',points:10)

# # # user3.characters<<character3
# # # user2.characters<<character3
# # # user2.characters<<character2

# # game1.users<<user2
# # game2.users<<user1

# # level1.games<<game1
# # level1.games<<game2
# # level2.games<<game3
# # level3.games<<game1
# # level4.games<<game2
# # level5.games<<game1
# # level6.games<<game3
# # level7.games<<game1

# # character1.levels << level1 << level2 << level3
# # character2.levels << level4 << level5 << level6
# # character3.levels << level7 << level8

# # # user1.levels << level6
# # # user1.levels << level3
# # # user1.levels << level1
# # # user2.levels << level2
# # # user2.levels << level1
# # # user3.levels << level4
# # # user3.levels << level5

