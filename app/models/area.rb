class Area < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :nivel
  acts_as_nested_set
  cattr_reader :per_page
  @@per_page = 20
  #default_scope permite hacer condicion al .all
  default_scope :conditions => { :activo => true }, :order => 'lft ASC'
  
  #def self.jeje
  #  first()
  #end
  #
  #def jeje
  #  "jejeje"
  #end
  
end
