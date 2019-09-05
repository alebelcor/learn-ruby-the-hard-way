# Sample from: https://github.com/airbnb/ruby/blob/master/rubocop-airbnb/lib/rubocop/airbnb.rb
#
# ------ Start ------
#
# require 'pathname'
# require 'psych'

# Dir.glob(File.expand_path('cop/**/*.rb', File.dirname(__FILE__))).map(&method(:require))

# module RuboCop
#   # RuboCop Airbnb project namespace
#   module Airbnb
#     PROJECT_ROOT =
#       Pathname.new(__FILE__).parent.parent.parent.expand_path.freeze
#     CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze
#     CONFIG = Psych.safe_load(CONFIG_DEFAULT.read).freeze

#     private_constant(*constants(false))
#   end
# end
#
# ------ End ------

# Assumptions:
#
# `require` loads a module/script
#
# `Dir::glob` returns the absolute path of a file
#
# `File::expand_path` returns the path to files based on a pattern and a search directory
#
# `File::dirname` returns the directory path of a given (file) path
#
# Conclusion: Expand all paths for `.rb` files that follow the pattern and require them

Dir.glob(
  File.expand_path(
    'cop/**/*.rb',
    File.dirname(__FILE__)
  )
).map(&method(:require))
