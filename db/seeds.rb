##
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

30.times do
  Course.create!([{
    title: Faker::DcComics.title,
    description: Faker::Quote.matz
  }])
end
