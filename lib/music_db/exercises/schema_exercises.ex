defmodule MusicDB.Exercises.SchemaExercises do
  import Ecto.Query

  alias MusicDB.{
    Artist,
    Repo,
    Track
  }

  def convert_schema_less_query do
    query = from MusicDB.Artist, where: [birth_date: ^Ecto.Date.cast!("1990-11-15")]

    Repo.all(query)
  end

  def insert_a_track! do
    # Use Repo.insert! to insert a %Track{} with whatever title and index you like.
    track = %MusicDB.Track{
      index: 0,
      title: "foo"
    }
    Repo.insert!(track)
  end

  def delete_an_album!(album) do
    # Use Repo.delete to delete the album
    Repo.delete(album)
  end
end
