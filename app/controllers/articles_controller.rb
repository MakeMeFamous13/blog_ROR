class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    if @article.save
      redirect_to articles_path, :flash => { :success => 'Your article has successfully been added.' }
    else
      redirect_to :back, :flash => { :danger => 'There was an error adding your article.' }
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all.order('id DESC')
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    if article.update_attributes article_params
      redirect_to articles_path, :flash => { :success => 'Your article has successfully been updated.' }
    else
      redirect_to :back, :flash => { :danger => 'There was an error updating your article.' }
    end
  end

  def destroy
    Article.destroy params[:id]
    redirect_to :back, :flash => { :success => 'Article has been deleted.' }
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
