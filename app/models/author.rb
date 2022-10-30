class Author
  attr_reader :name, :articles, :magazines

  def initialize(name)
    @name = name
    @articles = []
    @magazines = []
  end

  def update_collection(article)
    @articles << article
  end

  def update_contributions(magazine)
    @magazines << magazine
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    categories = []
    if @magazines
      @magazines.collect do |magazine|
        categories << magazine.category
      end
    end
    categories.uniq
  end
end
