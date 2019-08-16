module WordCounter
  def word_counter
    if self.body.nil?
       0
    else
       self.body.length
    end
  end
end
