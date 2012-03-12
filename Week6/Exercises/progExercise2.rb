#
#Exercise2. Write a Ruby program that analyzes an MP3 file. Many MP3
#files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information about the song: its name, the artist, which album it's from, and so on. You can parse this data structure by opening an MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't, there's no ID3 tag for this MP3 file, and nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. A sample song.mp3 file is available to test your program. Use Symbols, wherever possible.
#

class Mp3Parser
  
  def initialize(file)
    if File.file?(file)
      @file=File.open(file)
      @info={}
    else
      raise IOError, "File does not exist", "#{file}"
    end
  end

  def seektag
    @file.seek(-128, IO::SEEK_END)
  end

  def tagged?
    seektag
    return true if @file.read(3) =~ /TAG/
  end

  def info
    if tagged?
      @data = @file.read
      @info[:title] = @data.byteslice(0,30)
      @info[:artist] = @data.byteslice(30,30)
      @info[:album] = @data.byteslice(60,30)
      @info[:year] = @data.byteslice(90,4)
      @info[:comment] = @data.byteslice(94,30)
      @info[:genre] = @data.byteslice(124,1)
      @info
    else
      raise StandardError, "No tags"
    end
  end

  private :seektag, :tagged?

end

file = Mp3Parser.new(ARGV[0])
info = file.info
info.each do |key, value|
  puts "#{key} = #{value}"
end
