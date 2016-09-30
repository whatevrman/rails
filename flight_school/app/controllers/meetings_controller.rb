class MeetingsController < ApplicationController

    def create
	@meeting = Meeting.new (meeting_params)
    if @meeting.save
	    flash[:success] = "New meeting added."
	    redirect_to '/'
    else
	  flash[:success] = "New meeting NOT added!"
      render '/'
    end
  end
  def update
    @meeting = Meeting.find(params[:id])
    if @meeting.update_attributes(meeting_params)
      flash[:success] = "Profile updated"
      redirect_to '/'
    else
	  flash[:failure] = "Profile NOT updated!"
      redirect_to '/'
	  puts @meeting.errors.full_messages
    end
  end
  def show
    @meeting = Meeting.find(params[:id])
	redirect_to '/meetings/'+@meeting.id.to_s+'/view'
  end
  def edit
    @meeting = Meeting.find(params[:id])
	@student = User.find_by_id(@meeting.spid)
  end
  def view
    @meeting = Meeting.find(params[:id])
	@student = User.find_by_id(@meeting.spid)
  end






private
       def meeting_params
	     params.require(:meeting).permit(:id, :ipid, :spid, :date, :time, :remarks, :read)
	   end

end
