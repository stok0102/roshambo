class String
  define_method(:beats?) do |player2|
    if self == 'rock' && player2 == 'scissors'
      true
    elsif self == 'paper' && player2 == 'rock'
      true
    elsif self == 'scissors' && player2 == 'paper'
      true
    else
      false
    end
  end
end

class String
  define_method(:computer) do
    computer_choice = {1 => 'rock', 2 => 'paper', 0 => 'scissors'}
    shoot = rand(3)
    computer_choice.fetch(shoot)
  end
end
