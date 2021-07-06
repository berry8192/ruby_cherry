require_relative './lib/factorial'
require_relative './lib/ramanujan'
require_relative './lib/rgb'
require_relative './lib/convert_hash_syntax'

puts 1+2
a='hello¥n world'
puts a
b="コンチ\nュワ"
puts b

puts factorial(6)
puts 1.0/ramanujan(2)
puts to_ints("#314159")
catch :sign do
    puts to_ints("#647484")
    throw :sign
    puts "NG"
end

old_syntax = <<~TEXT
{
    :name => 'Alice',
    :age=>20,
    :gender => :female
}
TEXT
puts convert_hash_syntax(old_syntax)