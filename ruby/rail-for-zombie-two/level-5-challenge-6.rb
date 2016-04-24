class Zombie < ActiveRecord::Base
  has_many :weapons

  def as_json(options=nil)
    super(options ||
            {include: :weapons, only: [:name, :ammo]})
  end
end
