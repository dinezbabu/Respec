class WordCount
  def initialize(text)
    @text=text
  end

  def results
    @text.split.length
  end
end