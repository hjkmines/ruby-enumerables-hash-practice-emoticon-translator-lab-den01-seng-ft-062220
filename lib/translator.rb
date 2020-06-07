# require modules here
require "pry"
require "yaml"


def load_library(yaml_file)

library = YAML.load_file(yaml_file)

  new_library = {}

  library.each do |key, value|
      new_library[key] = {}
      new_library[key][:english] = value.first
      new_library[key][:japanese] = value.last
  end
  new_library
end

def get_japanese_emoticon(yaml_file, emoticon)

library = YAML.load_file(yaml_file)
emo = load_library(yaml_file)

  emo.each do |meaning, value|
    if value[:english] == emoticon
     return value[:japanese]
  end
  end 
   "Sorry, that emoticon was not found"
end

def get_english_meaning(yaml_file, emoticon)
  
  library = YAML.load_file(yaml_file)
  emo = load_library(yaml_file)

  emo.each do |meaning, value|
    if value[:japanese] == emoticon
     return meaning
  end
  end 
   "Sorry, that emoticon was not found"
end
