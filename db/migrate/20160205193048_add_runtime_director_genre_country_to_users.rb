class AddRuntimeDirectorGenreCountryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :runtime, :string
    add_column :users, :director, :string
    add_column :users, :genre, :string
    add_column :users, :country, :string
  end
end
