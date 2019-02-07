class GossipsController < ApplicationController

  def index
    @gossip = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: rand(1..10))
    
      if @gossip.save
        flash[:success] = "Merci pour votre Gossip!"
        redirect_to root_path
      else
        flash[:danger] = "Le titre du gossip doit contenir entre 3 e 14 caractères et le contenu ne doit pas être vide."
        render 'new'
      end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
      @gossip = Gossip.find(params[:id])    
      gossip_params = params.require(:gossip).permit(:title, :content)   
      if @gossip.update(gossip_params)
      flash[:success] = "Le gossip a été modifié !"
      redirect_to root_path
      else 
        flash[:warning] = "Essaye encore !"
        render :edit
      end
  end
  
  def destroy
    @gossip = Gossip.find(params[:id]) 
    @gossip.destroy
    redirect_to root_path
  end

end