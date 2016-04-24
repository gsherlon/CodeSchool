class WeaponsController < ApplicationController
  def reload
    @weapon = Weapon.find(params[:id])

    respond_to do |format|
      format.js
      if @weapon.ammo < 30
        @weapon.reload(params[:ammo_to_reload])

        format.json { render json: @weapon.to_json(only: :ammo), status: :ok }
        format.html { redirect_to @weapon, notice: 'Weapon ammo reloaded' }
      else
        format.json { render json: @weapon.to_json(only: :ammo), status: :unprocessable_entity }
        format.html { redirect_to @weapon, notice: 'Weapon not reloaded' }
      end
    end
  end
end
