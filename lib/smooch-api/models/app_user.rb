=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SmoochApi

  class AppUser
    # The app user's ID, generated automatically.
    attr_accessor :_id

    # The app user's userId. This ID is specified by the appMaker. 
    attr_accessor :user_id

    # The app user's given name.
    attr_accessor :given_name

    # The app user's surname.
    attr_accessor :surname

    # The app user's email.
    attr_accessor :email

    # A datetime string with the format *yyyy-mm-ddThh:mm:ssZ* representing the moment an appUser was created.
    attr_accessor :signed_up_at

    # Custom properties for the app user.
    attr_accessor :properties

    # Flag indicating if the conversation has started for the app user.
    attr_accessor :conversation_started

    # Flag indicating if the appUser is secured by a JSON Web Token or not.
    attr_accessor :credential_required

    # List of clients associated with the app user.
    attr_accessor :clients

    # As clients, but containing linked clients which have not been confirmed yet (i.e. Twilio SMS).
    attr_accessor :pending_clients


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_id' => :'_id',
        :'user_id' => :'userId',
        :'given_name' => :'givenName',
        :'surname' => :'surname',
        :'email' => :'email',
        :'signed_up_at' => :'signedUpAt',
        :'properties' => :'properties',
        :'conversation_started' => :'conversationStarted',
        :'credential_required' => :'credentialRequired',
        :'clients' => :'clients',
        :'pending_clients' => :'pendingClients'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_id' => :'String',
        :'user_id' => :'String',
        :'given_name' => :'String',
        :'surname' => :'String',
        :'email' => :'String',
        :'signed_up_at' => :'String',
        :'properties' => :'Object',
        :'conversation_started' => :'BOOLEAN',
        :'credential_required' => :'BOOLEAN',
        :'clients' => :'Array<Client>',
        :'pending_clients' => :'Array<Client>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self._id = attributes[:'_id']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'givenName')
        self.given_name = attributes[:'givenName']
      end

      if attributes.has_key?(:'surname')
        self.surname = attributes[:'surname']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'signedUpAt')
        self.signed_up_at = attributes[:'signedUpAt']
      end

      if attributes.has_key?(:'properties')
        self.properties = attributes[:'properties']
      end

      if attributes.has_key?(:'conversationStarted')
        self.conversation_started = attributes[:'conversationStarted']
      end

      if attributes.has_key?(:'credentialRequired')
        self.credential_required = attributes[:'credentialRequired']
      end

      if attributes.has_key?(:'clients')
        if (value = attributes[:'clients']).is_a?(Array)
          self.clients = value
        end
      end

      if attributes.has_key?(:'pendingClients')
        if (value = attributes[:'pendingClients']).is_a?(Array)
          self.pending_clients = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @_id.nil?
        invalid_properties.push("invalid value for '_id', _id cannot be nil.")
      end

      if @properties.nil?
        invalid_properties.push("invalid value for 'properties', properties cannot be nil.")
      end

      if @conversation_started.nil?
        invalid_properties.push("invalid value for 'conversation_started', conversation_started cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_id.nil?
      return false if @properties.nil?
      return false if @conversation_started.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _id == o._id &&
          user_id == o.user_id &&
          given_name == o.given_name &&
          surname == o.surname &&
          email == o.email &&
          signed_up_at == o.signed_up_at &&
          properties == o.properties &&
          conversation_started == o.conversation_started &&
          credential_required == o.credential_required &&
          clients == o.clients &&
          pending_clients == o.pending_clients
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_id, user_id, given_name, surname, email, signed_up_at, properties, conversation_started, credential_required, clients, pending_clients].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SmoochApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
