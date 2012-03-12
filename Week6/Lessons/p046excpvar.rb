begin
  raise 'A test exception'
rescue Exception => e
  puts e.message
  puts e.backtrace.to_s
  puts e.backtrace.inspect
  puts e.inspect
  puts e.to_s
end
