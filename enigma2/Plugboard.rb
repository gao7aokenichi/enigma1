module Enigma
  class Plugboard

    attr_accessor :mappings

    def initialize()
      self.mappings = {}
    end

    def plug(a,b)
      self.mappings[a] = b
      self.mappings[b] = a
    end

    def swap(letter)
      self.mappings[letter] || letter
    end

  end
end
plugboard = new Enigma::Plugboard
plugboard.plug('A','B')
plugboard.swap('A') # 'B'
plugboard.swap('B') # 'A'
plugboard.swap('C') # 'C'