class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end
      module Users
      class SessionsController < Devise::SessionsController
        def destroy
          super do
            # Turbo requires redirects be :see_other (303); so override Devise default (302)
            return redirect_to after_sign_out_path_for(resource_name), status: :see_other
          end
        end
      end
    end
end

