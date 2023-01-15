puts "🌱 Seeding dogs..."

# Seed your database here


dog1 = Dog.create(name: "Bilbo", address:"Yonkers", image: "https://www.thelabradorsite.com/wp-content/uploads/2017/04/black-labs-loving-dogs.jpg")
dog2 = Dog.create(name:"Luna", address: "Yonkers", image: "https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/52993870/1/?bust=1672912697")
dog3 = Dog.create(name: "Happy", address:"Manhattan", image: "https://hiddenpondlabradors.com/wp-content/uploads/2015/10/Dolce237.jpg")
dog4 = Dog.create(name: "Biggs", address:"South Carolina", image:"https://www.thesprucepets.com/thmb/5ifyWuKUF7JaltzsQNy0vdFHJ84=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/breed_profile_germansheperd_1118000_profile_2608-d7a78e7c1cf049879bec1ec19113ee42.jpg")

walk1 = Walk.create(dogwalker: "Max", starttime: "12:00 PM",  length: "15 minutes", dog_id: dog4.id)
walk2 = Walk.create(dogwalker: "Nate", starttime: "10:00 PM",  length: "30 minutes", dog_id: dog1.id)
walk3 = Walk.create(dogwalker: "Kevin", starttime: "12:00 PM",  length: "15 minutes", dog_id: dog3.id)



puts "✅ Done seeding!"
