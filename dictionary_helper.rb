# abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,?!@#$%^&*()[]{}<>/\'"-_=+`~

def dict(output, input = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,?!@#$%^&*()[]{}<>/\'"-_=+`~')
  input.split('').each_with_index do |a, i|
    puts "\"#{a}\" => \"#{output.split('')[i]}\","
  end
end
