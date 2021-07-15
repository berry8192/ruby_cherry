require_relative './class/User'

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

def full_name(user)
    "#{user.first_name} #{user.last_name}"
end

users.each do |user|
    puts "氏名：#{full_name(user)}、年齢：#{user.age}"
end