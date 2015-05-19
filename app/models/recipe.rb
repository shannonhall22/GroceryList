class Recipe < ActiveRecord::Base
  def created_by
    User.where(creator_id: self.id)
  end
end
