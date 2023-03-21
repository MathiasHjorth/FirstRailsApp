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
    #kaster et article objekt til viewet:
    @article = Article.new
  end

  #post metode:
  def create
    #vi kalder article_params, som er en udvidelse på params vi selv har srkevet, til at tilgå query string parametrene
    # vi har tilføjet nogle restriktioner, før vi saver objektet til databasen
    @article = Article.new(article_params)

    if @article.save
      #omdirigér til den nye artikel, articles/:id
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    #kast det relevante artikel objekt tilbage til viewet
    # så form kan bygges
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      #omdiregere til den opdaterede artikel
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end



  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end



  private
  def article_params
    params.require(:article).permit(:title, :body)
  end



end
