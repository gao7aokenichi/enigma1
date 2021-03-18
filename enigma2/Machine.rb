module Enigma

  class Machine
    SEPARATOR = ''

    attr_accessor :reflector
    attr_accessor :plugboard

    def initialize(reflector: Reflector.new, plugboard: Plugboard.new)
      self.reflector = reflector
      self.plugboard = plugboard
    end

    def convert(string)
      string.split(SEPARATOR).map { |letter| process(letter) }.join(SEPARATOR)
    end

  private

    def process(letter)
      letter = plug(letter)
      letter = reflect(letter)
      letter = plug(letter)

      return letter
    end

    def plug(letter)
      self.plugboard.swap(letter)
    end

    def reflect(letter)
      self.reflector.reflect(letter)
    end

  end
end