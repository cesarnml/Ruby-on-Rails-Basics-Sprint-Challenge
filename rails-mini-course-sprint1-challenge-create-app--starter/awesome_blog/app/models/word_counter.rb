module WordCounter
  def word_counter
    if self.body.nil?
      return 0
    end
      return self.body.length
  end
end
