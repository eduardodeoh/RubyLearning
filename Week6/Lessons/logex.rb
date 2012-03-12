require 'logger'

$log = Logger.new('logfile', 'monthly')

def divide(numerator, denominator)  
  $log.debug "Numerator: #{numerator}, denominator: #{denominator}"
  begin
      result = numerator / denominator
  rescue Exception => e
    $log.error "Error in division!: #{e}"
    result = nil
  end
  result
end

divide(10,2)
divide(10,0)
