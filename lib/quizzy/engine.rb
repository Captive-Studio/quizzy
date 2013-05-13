module Quizzy
  class Engine < ::Rails::Engine
    isolate_namespace Quizzy
    require "carrierwave"
    require "globalize3"
    require "mini_magick"
  end
end
