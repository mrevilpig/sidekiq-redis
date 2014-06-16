class WelcomeController<ActionController::Base

  def index
  end

  def create
    if HardWorker.perform_async(params[:name], params[:count])
      redirect_to :root
    else
      respond_to do |format|
        format.html{redirect_to :back}
      end
    end
  end
end
