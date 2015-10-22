class Contacto < ActiveRecord::Base
	validates :correo, presence: {message: "El campo correo no debe de estar vacio"}
end
