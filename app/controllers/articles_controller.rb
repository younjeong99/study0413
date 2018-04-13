class ArticlesController < ApplicationController
    def new
    end
    
    def create
        params.permit!
        @article = Article.new(params[:article])
        @article.save()
        
        redirect_to @article
    end
    
    def show
        @found_article = Article.find(params[:id])
    end
    
    def index
        @all_articles = Article.all
    end
end
