# Exercise3. Modify your TextAnalyzer program to add the logging feature. (Exercise 7 of Week 3)


require 'logger'

class TextAnalyser
  attr_reader :file_info

  def initialize(file='text.txt', logfile='logtext.txt')
    @logfile = Logger.new(logfile,'daily')
    if File.file?(file)
      @file = file
      @logfile.info "Initializing file #{@file} ..."
      @file_info = { line_count: 0,
                    char_count: 0,
                    char_count_no_space: 0,
                    word_count: 0,
                    sentence_count: 0,
                    paragraph_count: 1,
                    words_per_setence: 0,
                    sentence_per_paragraph: 0 }
    else
      @logfile.fatal "File does not exist"
      @logfile.close
      raise IOError, "File does not exist", "#{file}"
    end
  end

  def file_stats
    @logfile.info " Processing file ...."
    File.open(@file, 'r') do |file|
      @logfile.info "   Opening file ...."
      file.each_line do |line|
        @file_info[:line_count] += 1 
        @file_info[:char_count] += line.length
        @file_info[:char_count_no_space] += line.split.join.length
        @file_info[:word_count] += line.split.length
        @file_info[:sentence_count] += 1 if line =~ /[\.!\?]/
        @file_info[:paragraph_count] += 1 if line =~ /^\s$/
        @logfile.info "     Processing line number: #{@file_info[:line_count]}"
      end
    end
    @file_info[:words_per_setence] = @file_info[:word_count] / @file_info[:sentence_count]
    @file_info[:sentence_per_paragraph] = @file_info[:sentence_count] / @file_info[:paragraph_count]
    @logfile.info "Closing file #{@file} ..."
    @logfile.close
  end
end

#text = TextAnalyser.new('blablab.txt')
text = TextAnalyser.new
text.file_stats
text.file_info.each do |key,value|
  puts "#{key} = #{value}"
end
