class User
    attr_accessor :first_name
    # def first_name=(val)
    #     @first_name = val
    # end
end
user1 = User.new
user2 = User.new
# user1 == user2 # => false


user1.first_name = "Judy"