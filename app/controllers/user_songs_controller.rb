class UserSongsController < ApplicationController
  def index
  	@user = User.find(params[:user_id])
  	@songs = @user.songs
  end
end

def favoritos
	@user = current_user
	@songs = @user.songs
	
end

def destroy_song
	song = Song.find(params[:song_id])
	@user = current_user
	@user.songs.delete(song)
	redirect_to user_songs_favoritos_path, notice: "cancion eliminada"
end