class User < ActiveRecord::Base
	authenticates_with_sorcery!
	    validates :password, length: { minimum: 3 }
		validates :password, confirmation: true
		validates :password_confirmation, presence: true

		validates :email, uniqueness: true

     scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0 "} }

     ROLES = %w[admin usuario]

     def roles=(roles)
       self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
     end

     def roles
       ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
     end

     def role?(role)
       roles.include? role.to_s
     end
end

