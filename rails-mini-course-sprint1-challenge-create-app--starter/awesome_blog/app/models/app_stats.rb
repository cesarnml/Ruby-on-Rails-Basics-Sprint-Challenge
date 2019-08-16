class AppStats
  attr_reader :posts, :quotes
  def initialize (posts, quotes)
    @posts = posts
    @quotes = quotes
  end

  def posts_count
    if posts.nil?
      0
    else
    posts.length
    end
  end

  def quotes_count
    if quotes.nil?
      0
    else
      quotes.length
    end
  end

  def posts_word_count
    word_count = 0
    posts.each {|post| word_count += post.body.length}
    word_count
  end

  def quotes_word_count
    word_count = 0
    quotes.each {|quote| word_count += quote.body.length}
    word_count
  end

  def all_count
    posts.length + quotes.length
  end

  def all_word_count
    self.posts_word_count + self.quotes_word_count
  end
end
