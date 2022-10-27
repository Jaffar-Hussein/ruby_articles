class Author
  attr_reader :name, :collection, :contribuitions

  def initialize(name)
    @name = name
    @collection = []
    @contribuitions = []
  end

  def update_collection(article)
    @collection << article
  end

  def update_contributions(magazine)
    @contribuitions << magazine
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    categories = []
    if @contribuitions
      @contribuitions.collect do |magazine|
        categories << magazine.category
      end
    end
    categories.uniq
  end
end
