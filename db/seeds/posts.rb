users = User.order(:created_at).take(10)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(body: content, remote_images_urls: %w[https://picsum.photos/350/350/?random https://picsum.photos/350/350/?random]) }
end