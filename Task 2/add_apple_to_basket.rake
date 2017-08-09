namespace :basket do
  desc 'Add apple to the baskets'
  task add_apples_to_basket: :environment do
    Baskets.find_each do |basket|
      Apples.find_each do |apple|
        if basket.fillrate = 0
          basket.fillrate=((((basket.fillrate)/100)*basket.capacity)+apple.count)/basket.capacity
        else if basket.fillrate >0 && basket.first.variety=apple.variety
               basket.fillrate=((((basket.fillrate)/100)*basket.capacity)+apple.count)/basket.capacity
             end
        end
        else if basket.fillrate = 100
               if basket.id=basket.last.id
                 puts "All baskets are full. We couldn't find the place for #{apple.count} apples"
               end
             else
               next
             end
      end
    end
  end
end