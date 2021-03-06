class ArticlesController < ApplicationController

  def index
    @articles = Article.select("title, permalink, teaser, published_date, published_at").order("published_date DESC")
    @article_months = @articles.group_by { |a| a.published_date.beginning_of_month}
  end

  def show
    @article = Article.find_by_permalink(params[:id])
    @latest  = Article.limit(5)
  end

  def new
    @article = Article.new
  end

  def create
     @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Successfully created article"
      redirect_to @article
    else
      flash[:error] = "Unable to created property. Please check your entries"
      render :action => 'new'
    end
  end

  def edit
    @article = Article.find_by_permalink(params[:id])
  end

  def update
    @article = Article.find_by_permalink(params[:id])
    if @article.update_attributes(article_params)
      flash[:notice] = "Successfully updated article"
      redirect_to article_url(@article)
    else
      flash[:error] = "Unable to update article. Please check your entries"
      render :action => 'edit'
    end
  end

  def destroy
    @article = Article.find_by_permalink(params[:id])
    if @article.destroy
      flash[:notice] = "Successfully deleted article"
    else
      flash[:error] = "Error in deleting article"
    end
    redirect_to articles_url
  end

  private

    def article_params
      params.require(:article).permit(:title,:permalink,:teaser,:body,:featured,:created_by,:created_at,:updated_at,:published_at,:published_date,:article_photo_caption,:article_photo)
    end
end
