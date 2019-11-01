def c(y, x = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,?!@#$%^&*()[]{}<>/\'"-_=+`~')
  x.split('').each_with_index do |a, i|
    puts "\"#{a}\" => \"#{y.split('')[i]}\","
  end
end