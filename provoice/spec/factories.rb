# FactoryBot.define do
#
#   factory :user do
#     first_name { Faker::Name.first_name }
#     last_name  { Faker::Name.last_name }
#     phone_number { Faker::PhoneNumber.cell_phone }
#     email { Faker::Internet.email }
#     password { "pbo_test_password" }
#   end
#
#   factory :expert do
#     username { Faker::Crypto.md5 }
#     first_name { Faker::Name.first_name }
#     last_name  { Faker::Name.last_name }
#     phone_number { Faker::PhoneNumber.cell_phone }
#     email { Faker::Internet.email }
#     password { "pbo_test_password" }
#   end
#
#   factory :teacher_type do
#     name {Faker::Company.profession.capitalize}
#     initialize_with { TeacherType.find_or_create_by(name: name)}
#   end
#
#   factory :teacher do
#     association :expert
#     association :teacher_type
#   end
#
#   factory :course do
#     name { Faker::Lorem.sentence }
#     description { Faker::Lorem.sentence }
#     association :teacher
#   end
# end
