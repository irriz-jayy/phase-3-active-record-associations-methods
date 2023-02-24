class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*
    self.update(artist: Artist.find_or_create_by(name: 'Drake'))
    # takes the artists and updates it but has a condition. It updates only when it has found the name drake if it exists it doesnt create if it doesnt it does  then updates it
  end
end