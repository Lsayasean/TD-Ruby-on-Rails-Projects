class PeopleController < ApplicationController
  def index
    #http://www.rymcmahon.com/articles/2
    if params[:search]
      @people = Person.search(params[:search]).order("created_at DESC")
    else
      #@people = Person.all.order("created_at DESC")
      @people = Person.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
    end
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @person = Person.find(params[:id])
    @params = params
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      #flash[:alert] = "You did it"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    if @person.delete
      redirect_to root_path
    else
      flash[:error] = "Failed to delete this product!"
      render :destroy
    end
  end

  # * The params in a controller looks like a Hash, but it's actually an instance of ActionController::Parameters, which provides several methods such as require and permit.
  # * The require method ensures that a specific parameter is present, and if it's not provided, the require method throws an error. It returns an instance of ActionController::Parameters for the key passed into require.
  # * The permit method returns a copy of the parameters object, returning only the permitted keys and values. When creating a new ActiveRecord model, only the permitted attributes are passed into the model.
  private
    def person_params
      params.require(:person).permit(:name, :bio, :age, :gender, :height, :fab)
    end
end
