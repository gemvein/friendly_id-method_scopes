module FriendlyId
  module MethodScopes
    VERSION = File.read(File.expand_path('../../../../VERSION', __FILE__))

    def self.version_string
      "FriendlyId::MethodScopes version #{FriendlyId::MethodScopes::VERSION}"
    end
  end
end
