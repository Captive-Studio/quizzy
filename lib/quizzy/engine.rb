module Quizzy
  class Engine < ::Rails::Engine
    isolate_namespace Quizzy
    require "carrierwave"
  end
end
