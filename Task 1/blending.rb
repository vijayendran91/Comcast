module Blending
  def apple
    puts "Juice is made"
  end

  def self.included(base)
    base.before_destroy :apple
  end

end