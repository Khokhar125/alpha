class ArticlesController < ApplicationController

    before_action :set_article, only: [:edit, :show, :update, :destroy]

def index
@articles = Article.all
end


def new
@article = Article.new
end

def show
  
end
    

def edit
end

def update
if @article.update(article_params)
    flash[:notice] = "Article Was Successfully Updated.."
    redirect_to article_path(@article)
else
    render "edit"
end
end

def create
    @article =Article.new(article_params)
    if @article.save                          
    flash[:notice]= "Article Was Successfully Created."
        redirect_to article_path(@article.id)
   else
    render "new"
        end

end

def destroy
    flash[:notice]="Article Was Successfully Deleted."
    @article.destroy
    redirect_to articles_path
end

private

def set_article
    @article = Article.find_by_id(params[:id])
end

def article_params
params.require(:article).permit(:title, :description)
end



end