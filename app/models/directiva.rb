class Directiva < ActiveRecord::Base
   has_many :modulos
   has_many :p_trabajos
end
