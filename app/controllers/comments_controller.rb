class CommentsController < ApplicationController
	def create 
  	@album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:picture_id])
    @comment = @picture.comments.create(comment_params)
  	redirect_to album_path(@album)
  end
  def destroy
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:picture_id])
    @comment = @picture.comments.find(params[:id])
    @comment.destroy
    redirect_to album_path(@album)
  end
  private
   def comment_params
   	params.require(:comment).permit(:body, :user_id)
   end
end
