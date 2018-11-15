class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  Roles = [ :admin , :engineer, :office_appraiser, :land_appraiser, :assistant]

  def is?( requested_role )
    self.role == requested_role.to_s
  end

end
