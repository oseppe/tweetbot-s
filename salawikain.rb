require 'csv'

class Salawikain

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
    structures = read_file "structure"

    structures[rand(structures.count)]    
  end

  def read_file file_name
    file = "words/" + file_name + ".csv"

    words = []

    CSV.foreach(file) do |word|
      words.push word[0]
    end

    words
  end

  def replace word

    # remove the angle brackets
    type = word[1...-1]

    choices = read_file type

    choices[rand(choices.count)]
  end
end