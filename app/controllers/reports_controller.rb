class ReportsController < ApplicationController

	def student
		@student = Student.find(params[:id])
		@assignments = @student.student_assignments.order("completion_date DESC")
		@percent_complete = (@student.student_assignments.incomplete.count/@student.assignments.count)*100
	end

end
