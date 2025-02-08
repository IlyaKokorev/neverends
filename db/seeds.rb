if Rails.env.development?
  AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin|
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
end

Compliment.find_or_create_by!(text: "Foo")
Compliment.find_or_create_by!(text: "Bar")
Compliment.find_or_create_by!(text: "Baz")
