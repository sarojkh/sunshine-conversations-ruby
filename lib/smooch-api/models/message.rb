=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 1.7

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Message
    # The message ID, generated automatically.
    attr_accessor :_id

    # The ID of the message's author.
    attr_accessor :author_id

    # The role of the individual posting the message. Can be either *appUser* or *appMaker*.
    attr_accessor :role

    # The message type.
    attr_accessor :type

    # The display name of the message author.
    attr_accessor :name

    # The message text. Required for text messages. 
    attr_accessor :text

    # The email address of the message author.
    attr_accessor :email

    # The URL of the desired message avatar image.
    attr_accessor :avatar_url

    # The unix timestamp of the moment the message was received.
    attr_accessor :received

    # The mediaUrl for the image. Required for image messages. 
    attr_accessor :media_url

    # The mediaType for the image. Required for image messages. 
    attr_accessor :media_type

    # Flat JSON object containing any custom properties associated with the message.
    attr_accessor :metadata

    # The items in the message list. Required for carousel and list messages. 
    attr_accessor :items

    # The actions in the message.
    attr_accessor :actions

    # The payload of a reply action, if applicable.
    attr_accessor :payload

    # Settings to adjust the carousel layout. See [Display Settings](https://docs.smooch.io/rest/#display-settings).
    attr_accessor :display_settings

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_id' => :'_id',
        :'author_id' => :'authorId',
        :'role' => :'role',
        :'type' => :'type',
        :'name' => :'name',
        :'text' => :'text',
        :'email' => :'email',
        :'avatar_url' => :'avatarUrl',
        :'received' => :'received',
        :'media_url' => :'mediaUrl',
        :'media_type' => :'mediaType',
        :'metadata' => :'metadata',
        :'items' => :'items',
        :'actions' => :'actions',
        :'payload' => :'payload',
        :'display_settings' => :'displaySettings'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_id' => :'String',
        :'author_id' => :'String',
        :'role' => :'String',
        :'type' => :'String',
        :'name' => :'String',
        :'text' => :'String',
        :'email' => :'String',
        :'avatar_url' => :'String',
        :'received' => :'Float',
        :'media_url' => :'String',
        :'media_type' => :'String',
        :'metadata' => :'Object',
        :'items' => :'Array<MessageItem>',
        :'actions' => :'Array<Action>',
        :'payload' => :'String',
        :'display_settings' => :'DisplaySettings'
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

      if attributes.has_key?(:'authorId')
        self.author_id = attributes[:'authorId']
      end

      if attributes.has_key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'avatarUrl')
        self.avatar_url = attributes[:'avatarUrl']
      end

      if attributes.has_key?(:'received')
        self.received = attributes[:'received']
      end

      if attributes.has_key?(:'mediaUrl')
        self.media_url = attributes[:'mediaUrl']
      end

      if attributes.has_key?(:'mediaType')
        self.media_type = attributes[:'mediaType']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.has_key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.has_key?(:'displaySettings')
        self.display_settings = attributes[:'displaySettings']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @_id.nil?
        invalid_properties.push("invalid value for '_id', _id cannot be nil.")
      end

      if @author_id.nil?
        invalid_properties.push("invalid value for 'author_id', author_id cannot be nil.")
      end

      if @role.nil?
        invalid_properties.push("invalid value for 'role', role cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      if @avatar_url.nil?
        invalid_properties.push("invalid value for 'avatar_url', avatar_url cannot be nil.")
      end

      if @received.nil?
        invalid_properties.push("invalid value for 'received', received cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_id.nil?
      return false if @author_id.nil?
      return false if @role.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["text", "image", "carousel", "list"])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      return false if @text.nil?
      return false if @avatar_url.nil?
      return false if @received.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["text", "image", "carousel", "list"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _id == o._id &&
          author_id == o.author_id &&
          role == o.role &&
          type == o.type &&
          name == o.name &&
          text == o.text &&
          email == o.email &&
          avatar_url == o.avatar_url &&
          received == o.received &&
          media_url == o.media_url &&
          media_type == o.media_type &&
          metadata == o.metadata &&
          items == o.items &&
          actions == o.actions &&
          payload == o.payload &&
          display_settings == o.display_settings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_id, author_id, role, type, name, text, email, avatar_url, received, media_url, media_type, metadata, items, actions, payload, display_settings].hash
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
