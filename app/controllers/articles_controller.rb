class ArticlesController < ApplicationController

    def new  
        @article = Article.new
    end

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        # creates instance of new article in the db
        @article = Article.new(article_params)

        # saves the instance of article to the db
        if @article.save
            # redirects user to the show action change has been committed to db
            redirect_to @article
        else 
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    private
    def article_params
        params.require(:article).permit(:title, :text)
    end

end
