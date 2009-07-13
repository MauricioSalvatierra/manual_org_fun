class Area < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :nivel
  acts_as_nested_set
  cattr_reader :per_page
  @@per_page = 20
  
  has_many :formularios
 
#Area.send(:with_exclusive_scope) { Area.find(:all) } 
  #default_scope permite hacer condicion al .all
  default_scope :conditions => { :activo => true }, :order => 'lft ASC'
  def to_s
    "#{nombre}"
  end
 
  class << self
    def find_superior(id)
      tmp = true
      while tmp
        parent = find(id)
        if parent.parent_id.nil?
          parent, tmp = parent, false
        end
        if parent.activo
          parent, tmp = parent.parent, false
        end
      end
      parent
    end
  end
  #def self.jeje
  #  first()
  #end
  #
  #def jeje
  #  "jejeje"
  #end
  
end
