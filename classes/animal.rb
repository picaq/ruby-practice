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
  def noise
    @noise
  end

  def noise=(value)
    @noise = value
  end
end
