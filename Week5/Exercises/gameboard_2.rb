class GameBoard
    def initialize 
          @game_row = [0, 1, 2, 3, 4, 5, 6]
              @misses = 0
                  @hits = 0
                    end
      
      def set_locations_cells(arr)
             @locations = arr
               end
        
        def check_yourself(guess)
              not_hit = @game_row - @locations
                  
                  if guess.empty?
                          puts 
                                  elsif not_hit.include?(guess.to_i)
                                          puts 'Miss'
                                                @misses += 1
                                                    elsif @locations.include?(guess.to_i)
                                                            puts 'Hit'
                                                                  @hits += 1
                                                                      else
                                                                              puts "\nOut of Range!\n\n"
                                                                                  end
                      
                      if @hits == 3
                              puts "\nEnd\n"
                                    'kill'
                                        end
                        end
end
