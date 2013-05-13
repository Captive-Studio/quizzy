module Quizzy
  class Engine < ::Rails::Engine
    isolate_namespace Quizzy
    require "CarrierWave"
  end
end
