fiber = Fiber.new {
	puts 'hoge is '
	Fiber.yield
	puts 'Good'
}

puts 'No.1'
fiber.resume
puts 'No.2'
fiber.resume
puts 'No.3'
