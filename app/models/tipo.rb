class Tipo < ActiveRecord::Base
  cattr_reader :per_page
  @@per_page = 20
   has_many :areas
  def to_s
    "#{nombre}"
  end
end
