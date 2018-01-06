# frozen_string_literal: true

# frozen_string_literal: true

require_relative 'defaults'

module RbCloak
  # Documentation:
  # * REST: http://www.keycloak.org/docs-api/3.4/rest-api/index.html#_roles_resource
  class Roles < Defaults
    attr_reader :parent
    def initialize(client, parent)
      super(client)
      @parent = parent
    end

    def url
      parent.url + '/roles'
    end
  end

  # ROLE_ENTITY: http://www.keycloak.org/docs-api/3.4/rest-api/index.html#_rolerepresentation
  class Role < Default
    def entity_id
      entity[:name]
    end

    def entity_name
      entity[:name]
    end
  end
end
