def electronics(price, name)
  if name == 'iphone'
    puts "#{price}"
  elsif name == 'ipad'
    puts "#{price}"
  elsif name == 'mac'
    puts "#{price} "
  else
    puts 'I am sorry I don\'t have that in my inventory!'
  end
end

electronics(80, 'ipad')
electronics(160, 'iphone')
electronics(2300, 'mac')
electronics(2300, 'drone')


