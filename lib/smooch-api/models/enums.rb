=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.23

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Enums
    attr_accessor :actionSize

    attr_accessor :actionType

    attr_accessor :businessSystemType

    attr_accessor :clientStatus

    attr_accessor :confirmationType

    attr_accessor :conversationActivityType

    attr_accessor :deploymentActivationMethod

    attr_accessor :deploymentHosting

    attr_accessor :deploymentStatus

    attr_accessor :imageAspectRatio

    attr_accessor :integrationStatus

    attr_accessor :integrationType

    attr_accessor :menuItemType

    attr_accessor :messageItemSize

    attr_accessor :messageType

    attr_accessor :fieldType

    attr_accessor :quotedMessageType

    attr_accessor :role

    attr_accessor :webhookTriggers

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
        :'actionSize' => :'ActionSize',
        :'actionType' => :'ActionType',
        :'businessSystemType' => :'BusinessSystemType',
        :'clientStatus' => :'ClientStatus',
        :'confirmationType' => :'ConfirmationType',
        :'conversationActivityType' => :'ConversationActivityType',
        :'deploymentActivationMethod' => :'DeploymentActivationMethod',
        :'deploymentHosting' => :'DeploymentHosting',
        :'deploymentStatus' => :'DeploymentStatus',
        :'imageAspectRatio' => :'ImageAspectRatio',
        :'integrationStatus' => :'IntegrationStatus',
        :'integrationType' => :'IntegrationType',
        :'menuItemType' => :'MenuItemType',
        :'messageItemSize' => :'MessageItemSize',
        :'messageType' => :'MessageType',
        :'fieldType' => :'FieldType',
        :'quotedMessageType' => :'QuotedMessageType',
        :'role' => :'Role',
        :'webhookTriggers' => :'WebhookTriggers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'actionSize' => :'String',
        :'actionType' => :'String',
        :'businessSystemType' => :'String',
        :'clientStatus' => :'String',
        :'confirmationType' => :'String',
        :'conversationActivityType' => :'String',
        :'deploymentActivationMethod' => :'String',
        :'deploymentHosting' => :'String',
        :'deploymentStatus' => :'String',
        :'imageAspectRatio' => :'String',
        :'integrationStatus' => :'String',
        :'integrationType' => :'String',
        :'menuItemType' => :'String',
        :'messageItemSize' => :'String',
        :'messageType' => :'String',
        :'fieldType' => :'String',
        :'quotedMessageType' => :'String',
        :'role' => :'String',
        :'webhookTriggers' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ActionSize')
        self.actionSize = attributes[:'ActionSize']
      end

      if attributes.has_key?(:'ActionType')
        self.actionType = attributes[:'ActionType']
      end

      if attributes.has_key?(:'BusinessSystemType')
        self.businessSystemType = attributes[:'BusinessSystemType']
      end

      if attributes.has_key?(:'ClientStatus')
        self.clientStatus = attributes[:'ClientStatus']
      end

      if attributes.has_key?(:'ConfirmationType')
        self.confirmationType = attributes[:'ConfirmationType']
      end

      if attributes.has_key?(:'ConversationActivityType')
        self.conversationActivityType = attributes[:'ConversationActivityType']
      end

      if attributes.has_key?(:'DeploymentActivationMethod')
        self.deploymentActivationMethod = attributes[:'DeploymentActivationMethod']
      end

      if attributes.has_key?(:'DeploymentHosting')
        self.deploymentHosting = attributes[:'DeploymentHosting']
      end

      if attributes.has_key?(:'DeploymentStatus')
        self.deploymentStatus = attributes[:'DeploymentStatus']
      end

      if attributes.has_key?(:'ImageAspectRatio')
        self.imageAspectRatio = attributes[:'ImageAspectRatio']
      end

      if attributes.has_key?(:'IntegrationStatus')
        self.integrationStatus = attributes[:'IntegrationStatus']
      end

      if attributes.has_key?(:'IntegrationType')
        self.integrationType = attributes[:'IntegrationType']
      end

      if attributes.has_key?(:'MenuItemType')
        self.menuItemType = attributes[:'MenuItemType']
      end

      if attributes.has_key?(:'MessageItemSize')
        self.messageItemSize = attributes[:'MessageItemSize']
      end

      if attributes.has_key?(:'MessageType')
        self.messageType = attributes[:'MessageType']
      end

      if attributes.has_key?(:'FieldType')
        self.fieldType = attributes[:'FieldType']
      end

      if attributes.has_key?(:'QuotedMessageType')
        self.quotedMessageType = attributes[:'QuotedMessageType']
      end

      if attributes.has_key?(:'Role')
        self.role = attributes[:'Role']
      end

      if attributes.has_key?(:'WebhookTriggers')
        self.webhookTriggers = attributes[:'WebhookTriggers']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      actionSize_validator = EnumAttributeValidator.new('String', ["compact", "full", "tall"])
      return false unless actionSize_validator.valid?(@actionSize)
      actionType_validator = EnumAttributeValidator.new('String', ["buy", "link", "locationRequest", "postback", "reply", "share", "webview"])
      return false unless actionType_validator.valid?(@actionType)
      businessSystemType_validator = EnumAttributeValidator.new('String', ["helpscout", "slack", "zendesk"])
      return false unless businessSystemType_validator.valid?(@businessSystemType)
      clientStatus_validator = EnumAttributeValidator.new('String', ["active", "blocked", "inactive", "pending"])
      return false unless clientStatus_validator.valid?(@clientStatus)
      confirmationType_validator = EnumAttributeValidator.new('String', ["immediate", "userActivity", "prompt"])
      return false unless confirmationType_validator.valid?(@confirmationType)
      conversationActivityType_validator = EnumAttributeValidator.new('String', ["conversation:read", "typing:start", "typing:stop"])
      return false unless conversationActivityType_validator.valid?(@conversationActivityType)
      deploymentActivationMethod_validator = EnumAttributeValidator.new('String', ["sms", "voice"])
      return false unless deploymentActivationMethod_validator.valid?(@deploymentActivationMethod)
      deploymentHosting_validator = EnumAttributeValidator.new('String', ["self", "smooch"])
      return false unless deploymentHosting_validator.valid?(@deploymentHosting)
      deploymentStatus_validator = EnumAttributeValidator.new('String', ["deleting", "error", "integrated", "pending", "registered", "starting", "unregistered"])
      return false unless deploymentStatus_validator.valid?(@deploymentStatus)
      imageAspectRatio_validator = EnumAttributeValidator.new('String', ["horizontal", "square"])
      return false unless imageAspectRatio_validator.valid?(@imageAspectRatio)
      integrationStatus_validator = EnumAttributeValidator.new('String', ["active", "inactive", "error"])
      return false unless integrationStatus_validator.valid?(@integrationStatus)
      integrationType_validator = EnumAttributeValidator.new('String', ["android", "api", "apn", "fcm", "ios", "line", "mailgun", "messagebird", "messenger", "telegram", "twilio", "twitter", "viber", "web", "wechat", "whatsapp"])
      return false unless integrationType_validator.valid?(@integrationType)
      menuItemType_validator = EnumAttributeValidator.new('String', ["link", "postback", "submenu"])
      return false unless menuItemType_validator.valid?(@menuItemType)
      messageItemSize_validator = EnumAttributeValidator.new('String', ["compact", "large"])
      return false unless messageItemSize_validator.valid?(@messageItemSize)
      messageType_validator = EnumAttributeValidator.new('String', ["carousel", "file", "image", "list", "location", "text", "form", "formResponse"])
      return false unless messageType_validator.valid?(@messageType)
      fieldType_validator = EnumAttributeValidator.new('String', ["text", "email", "select"])
      return false unless fieldType_validator.valid?(@fieldType)
      quotedMessageType_validator = EnumAttributeValidator.new('String', ["message", "externalMessageId"])
      return false unless quotedMessageType_validator.valid?(@quotedMessageType)
      role_validator = EnumAttributeValidator.new('String', ["appMaker", "appUser"])
      return false unless role_validator.valid?(@role)
      webhookTriggers_validator = EnumAttributeValidator.new('String', ["appUser:delete", "client:add", "client:remove", "conversation:read", "conversation:referral", "conversation:start", "link:failure", "link:match", "link:success", "merge:appUser", "message:appMaker", "message:appUser", "message:delivery:channel", "message:delivery:failure", "message:delivery:user", "payment:success", "postback", "typing:appUser"])
      return false unless webhookTriggers_validator.valid?(@webhookTriggers)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actionSize Object to be assigned
    def actionSize=(actionSize)
      validator = EnumAttributeValidator.new('String', ["compact", "full", "tall"])
      unless validator.valid?(actionSize)
        fail ArgumentError, "invalid value for 'actionSize', must be one of #{validator.allowable_values}."
      end
      @actionSize = actionSize
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] actionType Object to be assigned
    def actionType=(actionType)
      validator = EnumAttributeValidator.new('String', ["buy", "link", "locationRequest", "postback", "reply", "share", "webview"])
      unless validator.valid?(actionType)
        fail ArgumentError, "invalid value for 'actionType', must be one of #{validator.allowable_values}."
      end
      @actionType = actionType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] businessSystemType Object to be assigned
    def businessSystemType=(businessSystemType)
      validator = EnumAttributeValidator.new('String', ["helpscout", "slack", "zendesk"])
      unless validator.valid?(businessSystemType)
        fail ArgumentError, "invalid value for 'businessSystemType', must be one of #{validator.allowable_values}."
      end
      @businessSystemType = businessSystemType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] clientStatus Object to be assigned
    def clientStatus=(clientStatus)
      validator = EnumAttributeValidator.new('String', ["active", "blocked", "inactive", "pending"])
      unless validator.valid?(clientStatus)
        fail ArgumentError, "invalid value for 'clientStatus', must be one of #{validator.allowable_values}."
      end
      @clientStatus = clientStatus
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] confirmationType Object to be assigned
    def confirmationType=(confirmationType)
      validator = EnumAttributeValidator.new('String', ["immediate", "userActivity", "prompt"])
      unless validator.valid?(confirmationType)
        fail ArgumentError, "invalid value for 'confirmationType', must be one of #{validator.allowable_values}."
      end
      @confirmationType = confirmationType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] conversationActivityType Object to be assigned
    def conversationActivityType=(conversationActivityType)
      validator = EnumAttributeValidator.new('String', ["conversation:read", "typing:start", "typing:stop"])
      unless validator.valid?(conversationActivityType)
        fail ArgumentError, "invalid value for 'conversationActivityType', must be one of #{validator.allowable_values}."
      end
      @conversationActivityType = conversationActivityType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deploymentActivationMethod Object to be assigned
    def deploymentActivationMethod=(deploymentActivationMethod)
      validator = EnumAttributeValidator.new('String', ["sms", "voice"])
      unless validator.valid?(deploymentActivationMethod)
        fail ArgumentError, "invalid value for 'deploymentActivationMethod', must be one of #{validator.allowable_values}."
      end
      @deploymentActivationMethod = deploymentActivationMethod
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deploymentHosting Object to be assigned
    def deploymentHosting=(deploymentHosting)
      validator = EnumAttributeValidator.new('String', ["self", "smooch"])
      unless validator.valid?(deploymentHosting)
        fail ArgumentError, "invalid value for 'deploymentHosting', must be one of #{validator.allowable_values}."
      end
      @deploymentHosting = deploymentHosting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deploymentStatus Object to be assigned
    def deploymentStatus=(deploymentStatus)
      validator = EnumAttributeValidator.new('String', ["deleting", "error", "integrated", "pending", "registered", "starting", "unregistered"])
      unless validator.valid?(deploymentStatus)
        fail ArgumentError, "invalid value for 'deploymentStatus', must be one of #{validator.allowable_values}."
      end
      @deploymentStatus = deploymentStatus
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] imageAspectRatio Object to be assigned
    def imageAspectRatio=(imageAspectRatio)
      validator = EnumAttributeValidator.new('String', ["horizontal", "square"])
      unless validator.valid?(imageAspectRatio)
        fail ArgumentError, "invalid value for 'imageAspectRatio', must be one of #{validator.allowable_values}."
      end
      @imageAspectRatio = imageAspectRatio
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integrationStatus Object to be assigned
    def integrationStatus=(integrationStatus)
      validator = EnumAttributeValidator.new('String', ["active", "inactive", "error"])
      unless validator.valid?(integrationStatus)
        fail ArgumentError, "invalid value for 'integrationStatus', must be one of #{validator.allowable_values}."
      end
      @integrationStatus = integrationStatus
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] integrationType Object to be assigned
    def integrationType=(integrationType)
      validator = EnumAttributeValidator.new('String', ["android", "api", "apn", "fcm", "ios", "line", "mailgun", "messagebird", "messenger", "telegram", "twilio", "twitter", "viber", "web", "wechat", "whatsapp"])
      unless validator.valid?(integrationType)
        fail ArgumentError, "invalid value for 'integrationType', must be one of #{validator.allowable_values}."
      end
      @integrationType = integrationType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] menuItemType Object to be assigned
    def menuItemType=(menuItemType)
      validator = EnumAttributeValidator.new('String', ["link", "postback", "submenu"])
      unless validator.valid?(menuItemType)
        fail ArgumentError, "invalid value for 'menuItemType', must be one of #{validator.allowable_values}."
      end
      @menuItemType = menuItemType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] messageItemSize Object to be assigned
    def messageItemSize=(messageItemSize)
      validator = EnumAttributeValidator.new('String', ["compact", "large"])
      unless validator.valid?(messageItemSize)
        fail ArgumentError, "invalid value for 'messageItemSize', must be one of #{validator.allowable_values}."
      end
      @messageItemSize = messageItemSize
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] messageType Object to be assigned
    def messageType=(messageType)
      validator = EnumAttributeValidator.new('String', ["carousel", "file", "image", "list", "location", "text", "form", "formResponse"])
      unless validator.valid?(messageType)
        fail ArgumentError, "invalid value for 'messageType', must be one of #{validator.allowable_values}."
      end
      @messageType = messageType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fieldType Object to be assigned
    def fieldType=(fieldType)
      validator = EnumAttributeValidator.new('String', ["text", "email", "select"])
      unless validator.valid?(fieldType)
        fail ArgumentError, "invalid value for 'fieldType', must be one of #{validator.allowable_values}."
      end
      @fieldType = fieldType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quotedMessageType Object to be assigned
    def quotedMessageType=(quotedMessageType)
      validator = EnumAttributeValidator.new('String', ["message", "externalMessageId"])
      unless validator.valid?(quotedMessageType)
        fail ArgumentError, "invalid value for 'quotedMessageType', must be one of #{validator.allowable_values}."
      end
      @quotedMessageType = quotedMessageType
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] role Object to be assigned
    def role=(role)
      validator = EnumAttributeValidator.new('String', ["appMaker", "appUser"])
      unless validator.valid?(role)
        fail ArgumentError, "invalid value for 'role', must be one of #{validator.allowable_values}."
      end
      @role = role
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhookTriggers Object to be assigned
    def webhookTriggers=(webhookTriggers)
      validator = EnumAttributeValidator.new('String', ["appUser:delete", "client:add", "client:remove", "conversation:read", "conversation:referral", "conversation:start", "link:failure", "link:match", "link:success", "merge:appUser", "message:appMaker", "message:appUser", "message:delivery:channel", "message:delivery:failure", "message:delivery:user", "payment:success", "postback", "typing:appUser"])
      unless validator.valid?(webhookTriggers)
        fail ArgumentError, "invalid value for 'webhookTriggers', must be one of #{validator.allowable_values}."
      end
      @webhookTriggers = webhookTriggers
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          actionSize == o.actionSize &&
          actionType == o.actionType &&
          businessSystemType == o.businessSystemType &&
          clientStatus == o.clientStatus &&
          confirmationType == o.confirmationType &&
          conversationActivityType == o.conversationActivityType &&
          deploymentActivationMethod == o.deploymentActivationMethod &&
          deploymentHosting == o.deploymentHosting &&
          deploymentStatus == o.deploymentStatus &&
          imageAspectRatio == o.imageAspectRatio &&
          integrationStatus == o.integrationStatus &&
          integrationType == o.integrationType &&
          menuItemType == o.menuItemType &&
          messageItemSize == o.messageItemSize &&
          messageType == o.messageType &&
          fieldType == o.fieldType &&
          quotedMessageType == o.quotedMessageType &&
          role == o.role &&
          webhookTriggers == o.webhookTriggers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [actionSize, actionType, businessSystemType, clientStatus, confirmationType, conversationActivityType, deploymentActivationMethod, deploymentHosting, deploymentStatus, imageAspectRatio, integrationStatus, integrationType, menuItemType, messageItemSize, messageType, fieldType, quotedMessageType, role, webhookTriggers].hash
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
