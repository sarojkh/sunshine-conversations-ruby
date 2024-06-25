=begin
#Sunshine Conversations API

The version of the OpenAPI document: 12.6.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  # Customizable app settings.
  class AppSettings
    # Number of seconds of inactivity before a conversation’s messages  will be automatically deleted. See  [Conversation Retention Seconds](https://docs.smooch.io/guide/creating-and-managing-apps/#conversation-retention-seconds) for more information. 
    attr_accessor :conversation_retention_seconds

    # A boolean specifying whether credit card numbers should be masked  when sent through Sunshine Conversations. 
    attr_accessor :mask_credit_card_numbers

    # A boolean specifying whether animal names should be used for  unnamed users. See the  [user naming guide](https://docs.smooch.io/guide/receiving-messages/#message-author-name) for details. 
    attr_accessor :use_animal_names

    # A boolean specifying whether a message should be added to the conversation  history when a postback button is clicked. See  [Echo Postbacks](https://docs.smooch.io/guide/creating-and-managing-apps/#echo-postbacks) for more information. 
    attr_accessor :echo_postback

    # A boolean specifying whether a non message event coming from a channel will  trigger a  [start conversation](https://docs.smooch.io/rest/#section/Webhook-Triggers) event and count as a monthly active user (MAU). <aside class=\"notice\">Calling <code>startConversation()</code> (or equivalent) from the Android,  iOS or Web SDK will count as a MAU, regardless of the value of this setting.</aside> 
    attr_accessor :ignore_auto_conversation_start

    # A boolean specifying whether users are allowed to be part of several conversations. Enabling `multiConvo` is **irreversible**. 
    attr_accessor :multi_convo_enabled

    # A string specifying whether attachments should be stored in a publicly or privately accessible cloud storage. attachmentsAccess is set to public by default but can be modified to private. 
    attr_accessor :attachments_access

    # Number of seconds representing the expiration time of the generated media tokens for private attachments. The JWT will be valid for 2 hours by default. 
    attr_accessor :attachments_token_expiration_seconds

    # A boolean specifying whether the messages authored by the Sunshine Conversations platform should be localized. 
    attr_accessor :app_localization_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'conversation_retention_seconds' => :'conversationRetentionSeconds',
        :'mask_credit_card_numbers' => :'maskCreditCardNumbers',
        :'use_animal_names' => :'useAnimalNames',
        :'echo_postback' => :'echoPostback',
        :'ignore_auto_conversation_start' => :'ignoreAutoConversationStart',
        :'multi_convo_enabled' => :'multiConvoEnabled',
        :'attachments_access' => :'attachmentsAccess',
        :'attachments_token_expiration_seconds' => :'attachmentsTokenExpirationSeconds',
        :'app_localization_enabled' => :'appLocalizationEnabled'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'conversation_retention_seconds' => :'Integer',
        :'mask_credit_card_numbers' => :'Boolean',
        :'use_animal_names' => :'Boolean',
        :'echo_postback' => :'Boolean',
        :'ignore_auto_conversation_start' => :'Boolean',
        :'multi_convo_enabled' => :'Boolean',
        :'attachments_access' => :'String',
        :'attachments_token_expiration_seconds' => :'Integer',
        :'app_localization_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::AppSettings` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::AppSettings`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'conversation_retention_seconds')
        self.conversation_retention_seconds = attributes[:'conversation_retention_seconds']
      end

      if attributes.key?(:'mask_credit_card_numbers')
        self.mask_credit_card_numbers = attributes[:'mask_credit_card_numbers']
      end

      if attributes.key?(:'use_animal_names')
        self.use_animal_names = attributes[:'use_animal_names']
      end

      if attributes.key?(:'echo_postback')
        self.echo_postback = attributes[:'echo_postback']
      end

      if attributes.key?(:'ignore_auto_conversation_start')
        self.ignore_auto_conversation_start = attributes[:'ignore_auto_conversation_start']
      end

      if attributes.key?(:'multi_convo_enabled')
        self.multi_convo_enabled = attributes[:'multi_convo_enabled']
      end

      if attributes.key?(:'attachments_access')
        self.attachments_access = attributes[:'attachments_access']
      end

      if attributes.key?(:'attachments_token_expiration_seconds')
        self.attachments_token_expiration_seconds = attributes[:'attachments_token_expiration_seconds']
      end

      if attributes.key?(:'app_localization_enabled')
        self.app_localization_enabled = attributes[:'app_localization_enabled']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@conversation_retention_seconds.nil? && @conversation_retention_seconds < 0
        invalid_properties.push('invalid value for "conversation_retention_seconds", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@conversation_retention_seconds.nil? && @conversation_retention_seconds < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] conversation_retention_seconds Value to be assigned
    def conversation_retention_seconds=(conversation_retention_seconds)
      if !conversation_retention_seconds.nil? && conversation_retention_seconds < 0
        fail ArgumentError, 'invalid value for "conversation_retention_seconds", must be greater than or equal to 0.'
      end

      @conversation_retention_seconds = conversation_retention_seconds
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          conversation_retention_seconds == o.conversation_retention_seconds &&
          mask_credit_card_numbers == o.mask_credit_card_numbers &&
          use_animal_names == o.use_animal_names &&
          echo_postback == o.echo_postback &&
          ignore_auto_conversation_start == o.ignore_auto_conversation_start &&
          multi_convo_enabled == o.multi_convo_enabled &&
          attachments_access == o.attachments_access &&
          attachments_token_expiration_seconds == o.attachments_token_expiration_seconds &&
          app_localization_enabled == o.app_localization_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [conversation_retention_seconds, mask_credit_card_numbers, use_animal_names, echo_postback, ignore_auto_conversation_start, multi_convo_enabled, attachments_access, attachments_token_expiration_seconds, app_localization_enabled].hash
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
