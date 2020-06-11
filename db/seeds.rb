# Role.create(name: :admin)
# Role.create(name: :client)
# user1 = User.create(username: 'lac',
# 								    email: 'admin@gmail.com',
# 								    password: 'password1234',
# 								    password_confirmation: 'password1234')
# user1.add_role(:admin)
# user2 = User.create(username: 'tina',
# 								    email: 'client@gmail.com',
# 								    password: 'password1234',
# 								    password_confirmation: 'password1234')
# user2.add_role(:client)
# 1.upto(3) do |i|
# 	Product.create(name: "keo #{i}",
# 								 price: 500 * i,
# 								 user: user1)
# end
# 1.upto(3) do |i|
# 	Product.create(name: "osi #{i}",
# 								 price: 100 * i,
# 								 user: user2)
# end