class Group < ActiveRecord::Base

  has_many :memberships
  has_many :users, through: :memberships
  belongs_to :owner, class_name: User

  def isPublic?
    if self.isPublic == true
      "Public group"
    else
      "Private group"
    end
  end

  def show_order

  end


end

