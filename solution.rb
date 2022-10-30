# Please copy/paste all three classes into this file to submit your solution!
class Article
  attr_reader :title

  @@all = []
  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
    @author.update_collection(self)
    @author.update_contributions(magazine)
    @magazine.update_writers(author)
  end

  def self.all
    @@all
  end

  def author
    @author.name
  end

  def magazine
    @magazine.name
  end
end

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
      author.articles.each do |article|
        article_ << article.title if article.magazine == name
      end
    end
    article_
  end

  def contributing_authors
    counter = 0
    authors = []
    @contributors.map do |author|
      author.articles.each do |article|
        counter += 1 if article.magazine == name
      end
      authors << author.name if counter >= 2
      counter = 0
    end
    authors.uniq
  end
end
