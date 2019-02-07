class GossipsController < ApplicationController
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
end
