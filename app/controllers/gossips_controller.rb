class GossipsController < ApplicationController
  def index
    @gossip = Gossip.all
  end

  def show
    @find = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 4) # avec xxx qui sont les données obtenues à partir du formulaire

  if @gossip.save # essaie de sauvegarder en base @gossip
    redirect_to gossips_path
  else
    render new_gossip_path
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
