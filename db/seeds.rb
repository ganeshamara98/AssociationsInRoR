# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# student = Student.create(
#     name: 'swaroop',
#     email: 'swaroop@mail.com',
#     phone: 987463210
# )

# mentor = Mentor.create(
#     name: 'navin',
#     email: 'navin@mail.com',
# )

# if mentor.address.create() doesn't works use, mentor.build_address() && mentor.save but mentor.create_address() is easier than previous method.
# mentor.create_address(city: "rjy", state: "AP", pin: 563)
# student.create_address(city: "rjy", state: "AP", pin: 563)
