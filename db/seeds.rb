##
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
admin = User.new(email: "admin@admin.com", password: "123456", password_confirmation: "123456")
admin.skip_confirmation!
admin.save!

user = User.new(email: "test@test.com", password: "123456", password_confirmation: "123456")
user.skip_confirmation!
user.save!

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.find_by(email: "test@test.com"),
    short_description: Faker::Quote.famous_last_words,
    language: Faker::ProgrammingLanguage.name,
    level: 'Beginner',
    price: rand(1000..20000)
  }])
end
