class AgentsController < ApplicationController

  def index
    @agents = Agent.all.to_a
  end

  def show
    @agent = Agent.find_by_id(params[:id])
  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    if @agent.save
      flash[:notice] = "Successfully created agent"
      redirect_to agents_url
    else
      flash[:error] = "Unable to create agent. Please check your entries"
      render :action => 'new'
    end
  end

  def edit
    @agent = Agent.find_by_id(params[:id])
  end

  def update
    @agent = Agent.find_by_id(params[:id])
    if @agent.update_attributes(agent_params)
      flash[:notice] = "Successfully updated agent"
      redirect_to agents_url
    else
      flash[:error] = "Unable to update agent. Please check your entries"
      render :action => 'edit'
    end
  end

  def destroy
    @agent = Agent.find_by_id(params[:id])
    if @agent.destroy
      flash[:notice] = "Successfully deleted agent"
    else
      flash[:error] = "Error in deleting agent"
    end
    redirect_to agents_url
  end

  private

    def agent_params
      params.require(:agent).permit(:agent_name,:email_address,:mobile_no,:facebook,:twitter,:instagram,:linked_in,:avatar)
    end

end
