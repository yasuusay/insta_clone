User.create!(username:  "example",
             email: "example@gmail.com",
             password:              "password",
             password_confirmation: "password")

20.times do
  name  = Faker::Superhero.name
  email = Faker::Internet.email
  password = "password"
  User.create!(username: name,
               email: email,
               password:              password,
               password_confirmation: password)
end