class PostTagsController < ApplicationController
  # GET /post_tags
  # GET /post_tags.json
  def index
    @post_tags = PostTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post_tags }
    end
  end

  # GET /post_tags/1
  # GET /post_tags/1.json
  def show
    @post_tag = PostTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post_tag }
    end
  end

  # GET /post_tags/new
  # GET /post_tags/new.json
  def new
    @post_tag = PostTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post_tag }
    end
  end

  # GET /post_tags/1/edit
  def edit
    @post_tag = PostTag.find(params[:id])
  end

  # POST /post_tags
  # POST /post_tags.json
  def create
    @post_tag = PostTag.new(params[:post_tag])

    respond_to do |format|
      if @post_tag.save
        format.html { redirect_to @post_tag, notice: 'Post tag was successfully created.' }
        format.json { render json: @post_tag, status: :created, location: @post_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @post_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post_tags/1
  # PUT /post_tags/1.json
  def update
    @post_tag = PostTag.find(params[:id])

    respond_to do |format|
      if @post_tag.update_attributes(params[:post_tag])
        format.html { redirect_to @post_tag, notice: 'Post tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_tags/1
  # DELETE /post_tags/1.json
  def destroy
    @post_tag = PostTag.find(params[:id])
    @post_tag.destroy

    respond_to do |format|
      format.html { redirect_to post_tags_url }
      format.json { head :no_content }
    end
  end
end
