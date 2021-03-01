# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { email: 'winston@email.com', password: "password"  }, 
  { email: 'dagmar@email.com', password: "password"  }
  ])

videos = Video.create([
  { user_id: 2, url: "https://res.cloudinary.com/crowdpleaser/video/upload/v1614028912/l7aawpkf4wfyxqpy3apg.mp4"  }, 
  { user_id: 3, url: "https://res.cloudinary.com/crowdpleaser/video/upload/v1614029589/m383x8vnr9cttlke6fpz.mp4"  },
  { user_id: 2, url: "https://res.cloudinary.com/crowdpleaser/video/upload/v1614549582/w3bvuizkruvubgrg6lp8.mp4"  }
  ])
