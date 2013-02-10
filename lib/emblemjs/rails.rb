require "emblemjs/rails/version"
require "emblemjs/rails/engine"
require 'barber/precompiler'
# Monkeypatch for barber
class Barber::Precompiler
  def source
    @source ||= sources.map(&:read).join("\n;\n")
  end
end


module Emblemjs
  module Rails
  end
end
