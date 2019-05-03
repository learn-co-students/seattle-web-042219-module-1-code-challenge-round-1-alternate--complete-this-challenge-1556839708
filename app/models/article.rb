class Article
attr_accessor :title, :content
attr_reader :author, :magazine

@@all = []

def initialize (title, content, author, magazine)
@title = title
@content = content
@author = author
@magazine = magazine
@@all<< self
end

def self.all
@@all
end

end
