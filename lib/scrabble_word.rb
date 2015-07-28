class ScrabbleWord

  SCOREBOX = { a: 1, b: 3, c: 3, d: 2, e: 1,
              f: 4, g: 2, h: 4, i: 1, j: 8,
              k: 5, l: 1, m: 3, n: 1, o: 1,
              p: 3, q: 10, r: 1, s: 1, t: 1,
              u: 1, v: 4, w: 4, x: 8, y: 4,
              z: 10 }
  #initialize
  def initialize (word)
    @word = word
    @score = 0
  end

  #getter for @word returning lowercase
  def word
    @word.downcase
  end

  #method for returning word score value
  def score
    # @word.each_char do |i|
    #   @score = @score + SCOREBOX[:i]
    # end
    @word.split("").each do |i|
      @score = @score + SCOREBOX[:i]
    end
    return @score
  end

  #method for multiplying word score value
  def multiplier_score (multiplier)
    @word.each_char do |i|
      @score = @score + SCOREBOX[:i]
    end
    return @score * multiplier
  end
end
