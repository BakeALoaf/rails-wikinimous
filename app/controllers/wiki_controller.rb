class WikiController < ApplicationController
  def index
    @wikis = Article.all
  end

  def show
    @wiki = Article.find(params[:id])
  end

  def new
    @wiki = Article.new
  end

  def create
    @wiki = Article.new(params_wiki)
    @wiki.save
    redirect_to wiki_path(@wikis)
  end

  def params_wiki
    params.require(:article).permit(:title, :content)
  end

  def edit
    @wiki = Article.find(params[:id])
  end

  def update
    @wiki = Article.find(params[:id])
    @wiki.update(params_wiki)
    redirect_to wiki_path(@wiki)
  end

  def destroy
    @wiki = Article.find(params[:id])
    @wiki.destroy
    redirect_to wiki_path(@wiki)
  end
end
