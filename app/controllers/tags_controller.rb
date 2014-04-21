class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def new
		@tag = Tag.new
	end

	def create
	  @tag = Tag.new(params)
	  @tag.save

	  flash.notice = "Tag '#{@tag.name}' Created!"

	  redirect_to tag_path(@tag)
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag '#{@tag.name}' Destroyed!"

		redirect_to tags_path
	end

end