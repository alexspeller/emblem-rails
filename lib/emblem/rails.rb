require "emblem/rails/version"
require "emblem/rails/engine"
require 'barber/precompiler'
# Monkeypatch for barber
class Barber::Precompiler
  def source
    @source ||= sources.map(&:read).join("\n;\n")
  end
end


module Emblem
  module Rails
  end
end
