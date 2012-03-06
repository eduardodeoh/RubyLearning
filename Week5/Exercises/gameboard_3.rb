class GameBoard
    def initialize()
        end
      
      def set_locations_cells(locations)
            @locations = locations
              end
       
        def check_yourself(user_guess)
              if @locations.include?(user_guess.to_i)
                      @locations.delete(user_guess.to_i)
                            puts "Hit"
                                  if @locations.empty?
                                            puts "End"
                                                    'kill' 
                                                          end
                                      else
                                              puts "Miss"
                                                    'is_alive'
                                                        end
                end
end
