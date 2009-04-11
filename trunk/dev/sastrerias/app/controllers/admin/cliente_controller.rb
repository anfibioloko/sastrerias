class Admin::ClienteController < ApplicationController
  def index
    @clientes=Cliente.find(:all)
  end

  def new
    @cliente=Cliente.new
   
  end

  def create
    @cliente=Cliente.new(params[:cliente])
    if @cliente.save
        redirect_to :action=>:index
    end 
    
  end

  def update
    @cliente=Cliente.find(params[:id])
    if @cliente.update_attributes(params[:cliente])
      redirect_to :action=>:index
    else
      render :action=>:edit
    end
  end

  def show
  end

  def edit
    @cliente=Cliente.find(params[:id])
  end

  def destroy
  end

end
