class AddRuntimeDirectorGenreCountryToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :runtime, :string
    add_column :movies, :director, :string
    add_column :movies, :genre, :string
    add_column :movies, :country, :string
  end
end
