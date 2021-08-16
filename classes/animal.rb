# frozen_string_literal: true

class Animal
  def make_noise
    @noise
  end

  def set_noise(x = 'Oink!')
    @noise = x
  end
end
