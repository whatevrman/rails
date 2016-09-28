class RequestsController < ApplicationController
def create
	@types = ['Flight Lesson', 'Ground Lesson','Written Test', 'X/C Planning', 'Material Review', 'Pre-flight Review', 'Test Review']
	@request = Request.new (request_params)
    if @request.save
	    flash[:success] = "New request added."
	    redirect_to '/'
    else
	  flash[:success] = "New request NOT added!"
      render '/'
    end
  end
  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(request_params)
      flash[:success] = "Profile updated"
      redirect_to '/'
    else
	  flash[:failure] = "Profile NOT updated!"
      redirect_to '/'
	  puts @request.errors.full_messages
    end
  end
  def show
    @request = Request.find(params[:id])
	redirect_to '/requests/'+@request.id.to_s+'/view'
  end
  def edit
    @request = Request.find(params[:id])
  end
  def view
    @request = Request.find(params[:id])
	@student = User.find_by_id(@request.spid)
	@inst = User.find_by_id(@request.ipid)
  end
  
  private
  
			def request_params
			  params.require(:request).permit(:id, :spid, :ipid, :task_type, :date,
			  :time, :remarks, :approval)
			end
end
