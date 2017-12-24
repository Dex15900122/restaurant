class BlogsController < ApplicationController



def index 
  @restaurant = Rest.find(params[:restaurant_id])
  @blogs =@restaurant.blogs
end


def new 
  @restaurant = Rest.find(params[:restaurant_id])
  @blog = @restaurant.blogs.new
end

def create
  @restaurant = Rest.find(params[:restaurant_id])
  @blog = @restaurant.blogs.new(blog_params)
  @blog.user_id = current_user.id

    
  if @blog.save
    flash[:notice] = "blog was successfully created"
    
    redirect_to restaurant_blogs_path
  else
    flash.now[:alert] = "blog was failed to create"
    render :new
  end



end

def show
  @restaurant = Rest.find(params[:restaurant_id])

  @blog= Blog.find(params[:id])
  @comment = Comment.new
end

def edit

   @blog= Blog.find(params[:id])
end

def update
  
  @blog= Blog.find(params[:id])
  
  if @blog.update(blog_params)

    redirect_to restaurant_blogs_path
  else
    render:edit
  end
end

def destroy
  @restaurant = Rest.find(params[:restaurant_id])
  @blog = @restaurant.blogs
  @blog.destroy
  redirect_to restaurant_blogs_path
end






private


def blog_params
  params.require(:blog).permit(:title,:description,:photos)
end

end
