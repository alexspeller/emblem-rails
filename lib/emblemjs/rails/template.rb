require 'sprockets'
require 'sprockets/engines'
require 'ember/handlebars/template'
require 'barber-emblem'

module Emblemjs
  module Rails
    class Template < Ember::Handlebars::Template

      def evaluate(scope, locals, &block)
        target = template_target(scope)
        raw = handlebars?(scope)

        template = data

        if configuration.precompile
          if raw
            template = precompile_emblem(template)
          else
            template = precompile_ember_emblem(template)
          end
        else
          if raw
            template = compile_emblem(data)
          else
            template = compile_ember_emblem(template)
          end
        end

        "#{target} = #{template}\n"
      end

      private

      def compile_emblem(string)
        "Handlebars.compile(#{indent(string).inspect});"
      end

      def precompile_emblem(string)
        Barber::Emblem::FilePrecompiler.call(string)
      end

      def compile_ember_emblem(string)
        "Emblem.compile(Ember.Handlebars, #{indent(string).inspect});"
      end

      def precompile_ember_emblem(string)
        Barber::Emblem::EmberFilePrecompiler.call(string)
      end
    end
  end
end