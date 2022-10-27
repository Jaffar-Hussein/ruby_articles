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
