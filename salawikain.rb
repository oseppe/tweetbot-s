class Salawikain

  WORDS = {
      noun: [
        "aso", "ate", "Diyos", "kuya", "pusa", "tao"
      ],
    
      noun_action: [
        "alala", "awa", "gawa"
      ]
    }

  # yeah it's bad style to use a non-english word but it's funny
  # whenever i type this method
  def basa
    compose
  end

  def compose
    structure = get_structure

    saying = fill_in structure
  end

  def fill_in structure

    struc = structure.split

    struc.each_with_index do |word, i|
      if word.include? "<"
        struc[i] = replace word
      end
    end

    struc.join ' '
  end

  def get_structure
    "Nasa <noun> ang <noun_action> , nasa <noun> ang <noun_action> ."
  end

  def replace word

    # remove the angle brackets
    type = word[1...-1]

    choices = WORDS[type.to_sym]

    choices[rand(choices.count)]
  end
end