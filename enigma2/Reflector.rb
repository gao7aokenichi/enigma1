module Enigma
  ALPHABET = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z).freeze

  class Reflector

    module Mappings
      SAMPLE = %w(Y R U H Q S L D P X N G O K M I E B F Z C W V J A T).freeze
    end

    attr_accessor :mappings

    def initialize(mappings: Mappings::SAMPLE)
      self.mappings = mappings
    end

    def reflect(letter)
      ALPHABET[(self.mappings.index(letter)) % ALPHABET.length]
    end

  end
end
reflector = new Enigma::Reflector
reflector.reflect('A') # 'Y'
reflector.reflect('Y') # 'A'
reflector.reflect('B') # 'R'
reflector.reflect('R') # 'B'