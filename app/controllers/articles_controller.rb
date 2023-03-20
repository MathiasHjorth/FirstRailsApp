class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    #params[args..] er en variable der kan kaldes.
    # Den indeholder query string parameters fra URL.
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end

  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end