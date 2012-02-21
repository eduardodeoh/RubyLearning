filename = ARGV[0]

info = { :cc => 0,
                  :cc_wos => 0,
                           :lc => 1,
                                    :wc => 0,
                                             :sc => 0,
                                                      :pc => 1,
                                                               :avg_wps => 0,
                                                                        :avg_spp => 0 }

spaces = 0

if File.exists?(filename)
    data  = File.open(filename, 'r+')
      data.each_with_index do |line,index|
            info[:lc] = index + 1
                split_blank = line.split(/ /)
                    split_words = line.split(/[\s\']/)
                        split_sentences = line.chomp.split(/[\.\!\?]/)
                            spaces = spaces + split_blank.length
                                info[:wc] = info[:wc] + split_words.length
                                    info[:sc] = info[:sc] + split_sentences.length
                                        info[:pc] = info[:pc] + 1 if line =~ /^\s$/
                                          end
        info[:cc] = data.pos
          info[:cc_wos] = info[:cc] - spaces
            info[:avg_wps] = info[:wc]/info[:sc].round(1)
              info[:avg_spp] = info[:sc]/info[:pc].round(1)
else
    puts "File #{filename} does not exist"
end

puts "Character: #{info[:cc]}, w/o spaces: #{info[:cc_wos]}"
puts "Lines: #{info[:lc]}, Words: #{info[:wc]}"
puts "Sentences: #{info[:sc]}, Paragraphs: #{info[:pc]}"
puts "Average words per sentence: %.1f" %info[:avg_wps]
puts "Average sentences per paragraph: %.1f" %info[:avg_spp]
