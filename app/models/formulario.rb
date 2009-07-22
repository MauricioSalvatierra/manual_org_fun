class Formulario < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
  belongs_to :area
  validates_numericality_of :ci 
  
  before_save :convertir_nl2br!


  # Convierte las nuevas lineas de un formulariio a <br/> en HTML, iterando todos los campos de texto
  def convertir_nl2br!
    campos.each do |campo|
      self[campo.to_sym] = nl2br(send(campo))
    end
  end

  # Convierte las nuevas lineas que estan almacenadas como <br/> en nueva linea para presentar en el formulario "textarea"
  def convertir_br2nl!
    campos.each do |campo|
      #"nombre".to_sym => :nombre
      self[campo.to_sym] = br2nl(send(campo)) # send ejecuta el metodo con el calor tipo "String"
    end
  end

  # listado de campos
  def campos
    ["objectivo_area_funcional", "descripcion_funcion_principal", "descripcion_funciones_especificas", "relaciones_coordinacion_interna", "relacionamiento_interinstitucional", "principales_resultados", "nombre", "apellido", "cargo", "nivel_jerarquico", "inmediato_superior", "areas_dependientes", "tipo_area"]
  end
    

  protected

  def nl2br(param)
    param.to_s.gsub(/\n/, "<br/>")
  end

  def br2nl(param)
    param.to_s.gsub(/\<br\/>/, "\n") 
  end

end
