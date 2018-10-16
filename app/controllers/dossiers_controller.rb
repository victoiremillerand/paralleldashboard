class DossiersController < ApplicationController

def index
  @dossiers = Dossier.all
end

def new
  @dossier = Dossier.new
end

def create
  @dossier = Dossier.new(dossier_params)
  if @dossier.save
    redirect_to dossier_path(@dossier)
  else
    render "new"
  end
end

def show
  @dossier = Dossier.find(params[:id])
end


private

def dossier_params
  params.require(:dossier).permit(:name, :open, :nature, :price, :status, :client_id, :user_id)
end

end
