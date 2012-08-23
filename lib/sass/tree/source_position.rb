module Sass::Tree
  class SourcePosition
    # The line of the document associated with the position (zero-based).
    #
    # @return [Fixnum]
    attr_accessor :line

    # The column in the line of the document associated with the position (zero-based).
    #
    # @return [Fixnum]
    attr_accessor :column

    # @param line [Fixnum] The source line
    # @param column [Fixnum] The source column
    def initialize(line, column)
      @line = line
      @column = column
    end

    def to_s
      "(#{@line}:#{@column})"
    end

    # @return [String] A string representation of the variable
    def inspect(opts = {})
      to_s
    end
  end
end
