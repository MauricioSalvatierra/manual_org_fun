class Formulario < ActiveRecord::Base
 cattr_reader :per_page
  @@per_page = 20
  belongs_to :area
 
end
