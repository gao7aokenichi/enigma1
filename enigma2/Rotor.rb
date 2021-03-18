module Enigma
  class Rotor

    module Mappings
      A = %w(E K M F L G D Q V Z N T O W Y H X U S P A I B R C J).freeze
      B = %w(A J D K S I R U X B L H W T M C Q G Z N P Y F V O E).freeze
      C = %w(B D F H J L C P R T X V Z N Y E I W G A K M U S Q O).freeze
    end

    attr_accessor :mappings
    attr_accessor :offset

    def initialize(mappings)
      self.mappings = mappings
      reset!
    end

    def reset!
      self.offset = 0
    end

    def rotate
      self.offset = self.offset.next % ALPHABET.length
    end

    def turnover?
      ((self.position + self.offset) % ALPHABET.length).zero?
    end

    def forward(letter)
      return letter unless ALPHABET.include?(letter)
      return self.mappings[(ALPHABET.index(letter) + self.offset) % ALPHABET.length]
    end

    def reverse(letter)
      return letter unless ALPHABET.include?(letter)
      return ALPHABET[(self.mappings.index(letter) - self.offset) % ALPHABET.length]
    end

  end
end