# frozen_string_literal: true

# class Animal
#   def make_noise
#     @noise
#   end
#
#   def set_noise(x = 'Oink!')
#     @noise = x
#   end
# end

class Animal

  attr_accessor :noise, :color

  # same as
  # attr_reader :noise
  # attr_writer :noise

  # same as
  # def noise
  #   @noise
  # end
  #
  # def noise=(value)
  #   @noise = value
  # end

  def initialize(options = {})
    # @noise = 'Oink!'
    # same as
    # self.noise = 'Oink!'

    @noise = options[:noise] || 'Grrr!'

    puts "New animal instantiated"
  end
end
