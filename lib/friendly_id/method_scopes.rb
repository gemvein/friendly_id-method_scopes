module FriendlyId
  module MethodScopes

    # FriendlyId::Config.use will invoke this method when present, to allow
    # loading dependent modules prior to overriding them when necessary.
    def self.setup(model_class)
      model_class.friendly_id_config.use :slugged
    end

    # Sets up behavior and configuration options for FriendlyId::MethodScopes's method_scopes slugs
    # feature.
    def self.included(model_class)
      model_class.class_eval do
        friendly_id_config.class.send :include, Configuration
      end
    end

    # # This doesn't work yet, but will be used to hook up to the history module
    # def serialized_scope
    #   friendly_id_config.scope_method_columns.sort.map { |column, method| "#{column}:#{send(method)}" }.join(",")
    # end

    def scope_for_slug_generator
      relation = self.class.unscoped.friendly
      friendly_id_config.scope_method_columns.each do |column, method|
        relation = relation.where(column => send(method))
      end
      primary_key_name = self.class.primary_key
      relation.where(self.class.arel_table[primary_key_name].not_eq(send(primary_key_name)))
    end
    private :scope_for_slug_generator

    def slug_generator
      friendly_id_config.slug_generator_class.new(scope_for_slug_generator, friendly_id_config)
    end
    private :slug_generator

    module Configuration
      attr_accessor :scope_methods

      def scope_method_columns
        [@scope_methods].flatten.map { |s|
          column = (method_foreign_key(s) or method_so_id(s) or s).to_s
          my_method = (method_foreign_key(s) or method_so_method(s) or s).to_s
          [column, my_method]
        }
      end

      private

      def method_so_id(scope)
        if model_class.method_defined? scope
          :id
        end
      end

      def method_so_method(scope)
        if model_class.method_defined? scope
          scope
        end
      end

      def method_foreign_key(scope)
        reflection = model_class.reflections[scope] || model_class.reflections[scope.to_s]
        reflection.try(:foreign_key)
      end
    end
  end
end
