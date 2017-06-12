class BlogsController < ApplicationController
  'blogs'

  def index
    page_size = 5
    @page_num = 0
    if params[:page] != nill then
        @page_num = params[:page].to_i
    end
    @data = Blogpost.all.ordere('created_at desc')
      .offset(page_size * @page_num)
      .limit(page_size)
    @blogconfig = Blogconfig.find 1
  end

  def genre
    page_size = 5
    @page_num = 0
    if params[:page] != nill then
      @page_num = params[:page].to_i
    end
    @genre = Bloggenre.find params[:id]
    @data = Blogpost.where('bloggenre_id = ?', params[:id])
      .order('creagted_at desc').offset(page_size * @page_num)
      .limit(page_size)
    @blogconfig = Blogconfig.find 1
  end

  def show
    @blogpost = Blogpost.find params[:id]
    @blogconfig = Blogconfig.find 1
  end
end

