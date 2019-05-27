=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.11

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Deployment
    # The deployment ID, generated automatically.
    attr_accessor :id

    # The deployment status. See [**DeploymentStatusEnum**](Enums.md#DeploymentStatusEnum) for available values.
    attr_accessor :status

    # The deployment hosting. See [**DeploymentHostingEnum**](Enums.md#DeploymentHostingEnum) for available values.
    attr_accessor :hosting

    # The baseUrl of the deployment. Only present for `self` hosted deployments.
    attr_accessor :baseUrl

    # The username of the deployment. Only present for `self` hosted deployments.
    attr_accessor :username

    # The phoneNumber of the deployment. Only present once the deployment has been registered.
    attr_accessor :phoneNumber

    # The URL to be called by Smooch when the status of the deployment changes.
    attr_accessor :callbackUrl

    # The secret used to secure the callback.
    attr_accessor :callbackSecret

    # The integrationId of the integration using this deployment.
    attr_accessor :integrationId

    # The appId of the integration using this deployment.
    attr_accessor :appId


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'_id',
        :'status' => :'status',
        :'hosting' => :'hosting',
        :'baseUrl' => :'baseUrl',
        :'username' => :'username',
        :'phoneNumber' => :'phoneNumber',
        :'callbackUrl' => :'callbackUrl',
        :'callbackSecret' => :'callbackSecret',
        :'integrationId' => :'integrationId',
        :'appId' => :'appId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'status' => :'String',
        :'hosting' => :'String',
        :'baseUrl' => :'String',
        :'username' => :'String',
        :'phoneNumber' => :'String',
        :'callbackUrl' => :'String',
        :'callbackSecret' => :'String',
        :'integrationId' => :'String',
        :'appId' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self.id = attributes[:'_id']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'hosting')
        self.hosting = attributes[:'hosting']
      end

      if attributes.has_key?(:'baseUrl')
        self.baseUrl = attributes[:'baseUrl']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phoneNumber = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'callbackUrl')
        self.callbackUrl = attributes[:'callbackUrl']
      end

      if attributes.has_key?(:'callbackSecret')
        self.callbackSecret = attributes[:'callbackSecret']
      end

      if attributes.has_key?(:'integrationId')
        self.integrationId = attributes[:'integrationId']
      end

      if attributes.has_key?(:'appId')
        self.appId = attributes[:'appId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      if @hosting.nil?
        invalid_properties.push("invalid value for 'hosting', hosting cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @status.nil?
      return false if @hosting.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          status == o.status &&
          hosting == o.hosting &&
          baseUrl == o.baseUrl &&
          username == o.username &&
          phoneNumber == o.phoneNumber &&
          callbackUrl == o.callbackUrl &&
          callbackSecret == o.callbackSecret &&
          integrationId == o.integrationId &&
          appId == o.appId
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, status, hosting, baseUrl, username, phoneNumber, callbackUrl, callbackSecret, integrationId, appId].hash
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