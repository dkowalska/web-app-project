class Movie < ActiveRecord::Base
    
  def poster
    "http://ia.media-imdb.com/images/M/#{poster_url}"
  end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end
  
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(search_title, search_genre) 
    where(['title LIKE ? AND genre LIKE ?', "%#{search_title}%", "%#{search_genre}%"])
  end

end
