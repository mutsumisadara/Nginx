class NginxBlogsController < ApplicationController
  before_action :set_nginx_blog, only: %i[ show edit update destroy ]

  # GET /nginx_blogs or /nginx_blogs.json
  def index
    @nginx_blogs = NginxBlog.all
  end

  # GET /nginx_blogs/1 or /nginx_blogs/1.json
  def show
  end

  # GET /nginx_blogs/new
  def new
    @nginx_blog = NginxBlog.new
  end

  # GET /nginx_blogs/1/edit
  def edit
  end

  # POST /nginx_blogs or /nginx_blogs.json
  def create
    @nginx_blog = NginxBlog.new(nginx_blog_params)

    respond_to do |format|
      if @nginx_blog.save
        format.html { redirect_to nginx_blog_url(@nginx_blog), notice: "Nginx blog was successfully created." }
        format.json { render :show, status: :created, location: @nginx_blog }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nginx_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nginx_blogs/1 or /nginx_blogs/1.json
  def update
    respond_to do |format|
      if @nginx_blog.update(nginx_blog_params)
        format.html { redirect_to nginx_blog_url(@nginx_blog), notice: "Nginx blog was successfully updated." }
        format.json { render :show, status: :ok, location: @nginx_blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nginx_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nginx_blogs/1 or /nginx_blogs/1.json
  def destroy
    @nginx_blog.destroy
    respond_to do |format|
      format.html { redirect_to nginx_blogs_url, notice: "Nginx blog was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nginx_blog
      @nginx_blog = NginxBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nginx_blog_params
      params.require(:nginx_blog).permit(:title, :content)
    end
end
