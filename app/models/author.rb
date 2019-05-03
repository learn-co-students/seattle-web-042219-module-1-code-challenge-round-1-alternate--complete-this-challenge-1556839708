class Author
attr_reader :name

@@all = []

def initialize (name)
@name = name
@@all<< self
end

def self.all
@@all
end

def self.most_verbose
longest = Article.all[0].content.length
Article.all.each do |article|
  if (article.content.length) > longest
  longest = article
end
puts longest
end
end

def add_article(magazine, title, content)
Article.new(title, content, self, magazine)
end

def articles
Article.all.select{|article|article.author ==self}
end

def magazines
Article.all.map{|article|article.magazine if article.author == self}.compact.uniq
end

def show_specialties
self.magazines.map{|mag| mag.category}.uniq
end

end
