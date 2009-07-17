# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format 
# (all these examples are active by default):
 ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
  inflect.plural /^([a-z_]+)([^aeiou])$/i, '\1\2es'
  inflect.singular /^([a-z_]+)(es)$/i, '\1'
  inflect.irregular 'user', 'users'
  inflect.irregular 'session', 'sessions'
 end
