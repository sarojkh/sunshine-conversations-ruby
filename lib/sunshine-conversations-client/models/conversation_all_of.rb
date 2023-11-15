=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  class ConversationAllOf
    # Whether the conversation is the default conversation for the user. Will be true for the first personal conversation created for the user, and false in all other cases. 
    attr_accessor :is_default

    # A friendly name for the conversation, may be displayed to the business or the user. 
    attr_accessor :display_name

    # A short text describing the conversation.
    attr_accessor :description

    # A custom conversation icon url. The image must be in either JPG, PNG, or GIF format
    attr_accessor :icon_url

    # A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the conversation was last marked as read with role business. 
    attr_accessor :business_last_read

    # A datetime string with the format YYYY-MM-DDThh:mm:ss.SSSZ representing the moment the last message was received in the conversation, or the creation time if no messages have been received yet. 
    attr_accessor :last_updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_default' => :'isDefault',
        :'display_name' => :'displayName',
        :'description' => :'description',
        :'icon_url' => :'iconUrl',
        :'business_last_read' => :'businessLastRead',
        :'last_updated_at' => :'lastUpdatedAt'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_default' => :'Boolean',
        :'display_name' => :'String',
        :'description' => :'String',
        :'icon_url' => :'String',
        :'business_last_read' => :'String',
        :'last_updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'icon_url',
        :'business_last_read',
        :'last_updated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::ConversationAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::ConversationAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'icon_url')
        self.icon_url = attributes[:'icon_url']
      end

      if attributes.key?(:'business_last_read')
        self.business_last_read = attributes[:'business_last_read']
      end

      if attributes.key?(:'last_updated_at')
        self.last_updated_at = attributes[:'last_updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 100
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 100.')
      end

      if !@description.nil? && @description.to_s.length < 1
        invalid_properties.push('invalid value for "description", the character length must be great than or equal to 1.')
      end

      if !@icon_url.nil? && @icon_url.to_s.length > 2048
        invalid_properties.push('invalid value for "icon_url", the character length must be smaller than or equal to 2048.')
      end

      if !@icon_url.nil? && @icon_url.to_s.length < 1
        invalid_properties.push('invalid value for "icon_url", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.length > 100
      return false if !@description.nil? && @description.to_s.length < 1
      return false if !@icon_url.nil? && @icon_url.to_s.length > 2048
      return false if !@icon_url.nil? && @icon_url.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 100
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 100.'
      end

      if !description.nil? && description.to_s.length < 1
        fail ArgumentError, 'invalid value for "description", the character length must be great than or equal to 1.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] icon_url Value to be assigned
    def icon_url=(icon_url)
      if !icon_url.nil? && icon_url.to_s.length > 2048
        fail ArgumentError, 'invalid value for "icon_url", the character length must be smaller than or equal to 2048.'
      end

      if !icon_url.nil? && icon_url.to_s.length < 1
        fail ArgumentError, 'invalid value for "icon_url", the character length must be great than or equal to 1.'
      end

      @icon_url = icon_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_default == o.is_default &&
          display_name == o.display_name &&
          description == o.description &&
          icon_url == o.icon_url &&
          business_last_read == o.business_last_read &&
          last_updated_at == o.last_updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_default, display_name, description, icon_url, business_last_read, last_updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
      when :Boolean
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
        SunshineConversationsClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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
        value.compact.map { |v| _to_hash(v) }
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
