class ContextsController < ApplicationController
  before_action :authenticate_user!
  def index
    @contexts = current_user.contexts
  end

  def new
    @context = Context.new
  end

  def create
    @context = Context.new(context_params)
    @context.user = current_user;
    if @context.save
      redirect_to contexts_path
    else
      render 'new'
    end
  end

  def edit
    @context = Context.find(params[:id])
  end

  def destroy
    @context = Context.find(params[:id])
    @context.destroy
    redirect_to contexts_path
  end

  def update
    @context = Context.find(params[:id])
    if @context.update(context_params)
      redirect_to contexts_path
    end
  end

  private

  def context_params
    params.require(:context).permit(:name)
  end
end
