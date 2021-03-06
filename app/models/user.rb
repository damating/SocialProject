class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :picture, PictureUploader

  has_many :memberships
  has_many :groups, through: :memberships

  has_many :user_items
  has_many :items, through: :user_items


  validates :first_name, presence: true, length: {maximum: 20}, format: {with: /\A[a-zA-Z0-9_\-]+\z/,
                                                                         message: "Must be formatted correctly"}
  validates :last_name, presence: true, length: {maximum: 30}, format: {with: /\A[a-zA-Z0-9_\-]+\z/,
                                                                        message: "Must be formatted correctly"}

  def name
    [first_name, last_name].join " "
  end

end
