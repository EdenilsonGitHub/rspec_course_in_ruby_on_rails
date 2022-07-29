class WeaponsController < ApplicationController
  
  before_action :search_with_id, only: [:show, :destroy]
  
  def index
    @weapons = Weapon.all
  end

  def create
    @weapon = Weapon.create(weapon_params)
    redirect_to weapons_path
  end

  def show;end

  def destroy
    @weapon.destroy
  end

  private

  def search_with_id
    @weapon = Weapon.find_by_id(params.try(:[], :id))
  end

  def weapon_params
    params.require(:weapon).permit(:id, :name, :description, :power_step, :power_base, :level)
  end

end
