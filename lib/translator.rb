# require modules here

require 'pry'
require 'yaml'

def load_library(yaml_file)

library = YAML.load_file(yaml_file)

new_library = {}

library.each do |meaning, emoticons|
    new_library[meaning] = {english: emoticons[0], japanese: emoticons[1]}
end 
new_library
end 

def get_english_meaning(yaml_file, jap_emoticon)
  
library = load_library(yaml_file)
library.each do |k, v|
  if v[:japanese] == jap_emoticon
    output = v[:english] 
  else 
    "Not availalbe"
  end
  binding.pry 
end     
result
#binding.pry 
#puts " "
end 



















