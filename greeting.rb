def greeting
  greet = ARGV[0]
  ARGV[1..-1].each do |name|
  p "#{greet} #{name}" 
  end
end

greeting
