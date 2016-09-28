class SchoolsController < ApplicationController

    def create
	@school = School.new (school_params)
    if @school.save
	    flash[:success] = "New school added."
	    redirect_to '/'
    else
	  flash[:success] = "New school NOT added!"
      render '/'
    end
  end
  def update
    @school = School.find(params[:id])
    if @school.update_attributes(school_params)
      flash[:success] = "Profile updated"
      redirect_to '/'
    else
	  flash[:failure] = "Profile NOT updated!"
      redirect_to '/'
	  puts @school.errors.full_messages
    end
  end
  def show
    @school = School.find(params[:id])
	redirect_to '/schools/'+@school.id.to_s+'/view'
  end
  def edit
    @school = School.find(params[:id])
  end
  def view
    @school = School.find(params[:id])
  end
  private
  
  
	  def school_params
		params.require(:school).permit(:id,:name, :faa_id, :website, :years, :tp141, :tp61,
		:hpp,  :hcp,  :hcfi, :atp,  :hcfii, :hll, :disable, :dis_date, :admin, :phone, :line1, :city,
		:state, :zip, :eperson, :ephone, :email, :cperson, :cphone )
	  end
end
