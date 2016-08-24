class FeedbackController < ApplicationController
  
  def new
      @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        ContactMailer.feedback(@feedback).deliver_later
        format.html { redirect_to contact_path, notice: 'Feedback was successfully sent!' }
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { render :new }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  
    def feedback_params
       params.require(:feedback).permit(:email, :content) 
    end
  
end
