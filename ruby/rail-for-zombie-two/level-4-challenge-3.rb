class Weapon < ActiveRecord::Base
  belongs_to :zombie

  before_save :check_ammo

  def check_ammo
    WeaponMailer.low_ammo(self, self.zombie).deliver if self.ammo == 3
  end
end
