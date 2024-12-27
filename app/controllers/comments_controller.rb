class CommentsController < ApplicationController
  http_basic_authenticate_with name: "name", password: "password", only: [:delete]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comments_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private

  def comments_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
