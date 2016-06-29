class String
  define_method(:beats?) do |player2|
    if self == 'rock' && player2 == 'scissors'
      true
    elsif self == 'paper' && player2 == 'rock'
      true
    elsif self == 'scissors' && player2 == 'paper'
      true
    end
  end
end
