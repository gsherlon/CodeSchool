class Tweet < ActiveRecord::Base
  has_one :location
end

class Location < ActiveRecord::Base
  belongs_to :tweet
  add_index :assignments, :role_id
end
