require_relative '../config/environment'

def reload
  load 'config/environment.rb'
end

###  WRITE YOUR TEST CODE HERE ###

# Testing deliverable 1.1 : Author#initialize(name)
jaf = Author.new('jaffar')
hus = Author.new('hus')
han = Author.new('han')
# Testing deliverable 1.2 : Author#name
name = jaf.name

# Testing deliverable 2.1:Magazine#initialize(name, category)
daily = Magazine.new('Daily', 'Politics')
# Testing deliverable 2.2:Magazine#name
mag_name = daily.name
# Testing deliverable 2.3:Magazine#category
mag_category = daily.category
# Testing deliverable 2.4:Magazine.all
drama = Magazine.new('Daily2', 'Drama')
Magazine.new('Daily3', 'Fantasy')
all_mag = Magazine.all

# Testing deliverable 3.1:Article#initialize(author, magazine, title)
funny = Article.new(jaf, drama, 'Funny Article')
# Testing deliverable 3.2:Article#title
title = funny.title
# Testing deliverable 3.3:Article.all
funny2 = Article.new(hus, drama, 'Funny Article2')
funny3 = Article.new(han, drama, 'Funny Article3')
funny4 = Article.new(han, drama, 'Funny Article3')
funny5 = Article.new(han, drama, 'Funny Article3')
funny6 = Article.new(han, drama, 'Funny Article3')
all_articles = Article.all

# Testing deliverable 4.1:Article#author
author = funny3.author
# Testing deliverable 4.2:Article#magazine
magazine = funny3.magazine

# Testing deliverable 5.1:Author#articles
author_articles = hus.collection
# Testing deliverable 5.2:Author#magazines
author_magazines = hus.contribuitions
# Testing deliverable 5.3:Magazine#contributors
contrib = drama.contributors

# Testing deliverable 6.1:Author#add_article(magazine, title)
jaf.add_article(daily, 'The added article')
all_articles = Article.all
# Testing deliverable 6.2:Article#topic_areas
topics = jaf.topic_areas
# Testing deliverable 6.3:Magazine.find_by_name(name)
find_mag = Magazine.find_by_name('Daily3')
# Testing deliverable 6.4:Magazine#article_titles
article_titles = drama.article_titles
# Testing deliverable 6.5:Magazine#contributing_authors
contrib_authors = drama.contributing_authors

# Testing deliverable
### DO NOT REMOVE THIS
binding.pry

0
