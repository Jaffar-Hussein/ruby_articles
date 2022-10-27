class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
    @contributors = []
  end

  attr_reader :name, :contributors

  def self.all
    @@all
  end

  def update_writers(author)
    contributors << author
  end

  def self.find_by_name(name)
    @@all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    article_ = []
    @contributors.each do |author|
      author.collection.each do |article|
        article_ << article.title if article.magazine == name
      end
    end
    article_
  end

  def contributing_authors
    counter = 0
    authors = []
    @contributors.map do |author|
      author.collection.each do |article|
        counter += 1 if article.magazine == name
      end
      authors << author.name if counter >= 2
      counter = 0
    end
    authors.uniq
  end
end
