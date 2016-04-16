class Group < ActiveRecord::Base
  attr_accessor :isPublic

  has_many :memberships
  has_many :users, through: :memberships
end

def isPublic?
  if self.isPublic == true
    "Public group"
  else
    "Private group"
  end
end