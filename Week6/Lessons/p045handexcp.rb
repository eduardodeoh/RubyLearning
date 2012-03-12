def raise_and_rescue
  begin
    puts 'I am before the raise'
    raise 'An error has ocurred'
    puts 'I am after raise'
  rescue
    puts 'I am rescued'
  end
  puts 'I am after de begin/end block'
end
raise_and_rescue
