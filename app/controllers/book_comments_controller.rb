class BookCommentsController < ApplicationController
    def create
        @comment=current_user.book_comments.new(book_comment_params)
        @comment.book_id=params[:book_id]
        @comment.save
    end
    
    def destroy
        @comment=current_user.book_comments.find(params[:id])
        @comment.destroy
    end
    
    private
    def book_comment_params
        params.require(:book_comment).permit(:comment)
    end
end
