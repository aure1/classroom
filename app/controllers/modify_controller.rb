class ModifyController < ApplicationController

	before_action :set_course

	def mod
		@homeworks = Homework.all
    	@projects = Project.all
	end

	def create
		@tasks = []
		@homeworks = params[:homework]
		@project = params[:project]

		if @project
			@course.project = Project.find(@project)
		end

		if @homeworks
			@homeworks.each do |v| 
				@tasks << Homework.find(v)			
			end
			@course.homeworks = @tasks
		end

		

		
        respond_to do |format|
	       format.html { redirect_to @course, notice: 'Homeworks and Project were successfully added.' } 
	    end


	end

	private

	    def set_course
	      @course = Course.find(params[:id])
	    end
end
