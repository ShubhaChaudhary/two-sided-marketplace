class LessonsController < ApplicationController
    before_action :set_lesson, only: [:show, :edit, :update, :destroy]
def index
		if params[:category].blank?
			@lessons = Lesson.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@lessons = Lesson.where(category_id: @category_id).order("created_at DESC")
		end
	end

	def show
	end

	def new
		@lesson = Lesson.new
	end

	def create
		@lesson = Lesson.new(lessons_params)
		if @lesson.save
			redirect_to @lesson
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @lesson.update(lessons_params)
			redirect_to @lesson
		else
			render "edit"
		end
	end

	def destroy
		@lesson.destroy
		redirect_to root_path
	end

	private

	def lessons_params
		params.require(:lesson).permit(:title, :description, :image, :category_id)
	end

	def set_lesson
		@lesson = Lesson.find(params[:id])
	end
    
    
end
