class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_create :assign_default_role
  has_many :donations

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  #used for displaying in the rails admin list boxes
  def title
    if (self.first_name && self.first_name.length != 0)
      self.first_name + ' ' + self.last_name
    else
      self.email
    end
  end
end
