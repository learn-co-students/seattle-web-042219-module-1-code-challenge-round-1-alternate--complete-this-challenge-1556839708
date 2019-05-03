class Magazine
attr_accessor :name, :category

@@all = []

def initialize (name, category)
@name = name
@category = category
@@all<< self
end

def self.all
@@all
end

def self.find_by_name(mag)
@@all.find{|magazine| magazine.name == mag}
end

def article_titles
Article.all.map{|article|article.title if article.magazine == self}
end

def contributors
Article.all.map{|article|article.author if article.magazine == self}
end

def word_count
Article.all.map{|article|article.content if article.magazine ==self}.compact.join.split.size
end

end
