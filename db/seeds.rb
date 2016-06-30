require 'ffaker'

# Destroy old data.
Comment.destroy_all
Post.destroy_all
User.destroy_all

# Create sample users.
masa = User.create!(
  username: "Masatoshi",
  email:    "nishiguchi.masa@gmail.com",
  password: "password"
)
3.times do |n|
  User.create!(
    username: FFaker::Name.name,
    email:    "example-#{n+1}@example.com",
    password: "longpassword"
  )
end

# Create posts on a user.
# Adds 50 sample microposts to the first 6 users.
users = User.order(:created_at)
10.times do
  title   = FFaker::Lorem.word
  content = FFaker::Lorem.paragraph(1)
  users.each { |user| user.posts.create!(title: title, content: content) }
end

# Create comments.
posts = Post.all
5.times do
  content = FFaker::Lorem.sentence(5)
  posts.each { |post| post.comments.create!(content: content) }
end

# Create tags on posts.
posts.each do |post|
  3.times do
    name = FFaker::Lorem.word
    post.tags.create!(name: name)
  end
end
