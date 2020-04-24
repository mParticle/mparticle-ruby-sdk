require 'date'

module MParticle

  class Batch
    attr_accessor :events

    attr_accessor :source_request_id

    attr_accessor :environment

    attr_accessor :ip

    attr_accessor :schema_version

    attr_accessor :device_info

    attr_accessor :application_info

    attr_accessor :user_attributes

    attr_accessor :deleted_user_attributes

    attr_accessor :user_identities

    attr_accessor :consent_state

    attr_accessor :api_key

    attr_accessor :mpid

    attr_accessor :mp_deviceid

    attr_accessor :timestamp_unixtime_ms

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
    
    def events=(events)
      @events = events.map do |e|
        event_base = MParticle::EventBase.new
        event_base.data = e
        case e
          when AppEvent
            event_base.event_type = "custom_event"
          when FirstRunEvent
            event_base.event_type = "first_run"
          when SessionStartEvent
            event_base.event_type = "session_start"
          when SessionEndEvent
            event_base.event_type = "session_end"
          when SessionStartEvent
            event_base.event_type = "session_start"
          when ApplicationStateTransitionEvent
            event_base.event_type = "application_state_transition"
          when ScreenViewEvent
            event_base.event_type = "screen_view"
          when PushRegistrationEvent
            event_base.event_type = "push_registration"
          when ProfileEvent
            event_base.event_type = "profile"
          when OptOutEvent
            event_base.event_type = "opt_out"
          when BreadcrumbEvent
            event_base.event_type = "breadcrumb"
          when CommerceEvent
            event_base.event_type = "commerce_event"
          when PushMessageEvent
            event_base.event_type = "push_message"
          when NetworkPerformanceEvent
            event_base.event_type = "network_performance"
          when CrashReportEvent
            event_base.event_type = "commerce_event"
        end
        event_base
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'events' => :'events',
        :'source_request_id' => :'source_request_id',
        :'environment' => :'environment',
        :'ip' => :'ip',
        :'schema_version' => :'schema_version',
        :'device_info' => :'device_info',
        :'application_info' => :'application_info',
        :'user_attributes' => :'user_attributes',
        :'consent_state' => :'consent_state',
        :'deleted_user_attributes' => :'deleted_user_attributes',
        :'user_identities' => :'user_identities',
        :'api_key' => :'api_key',
        :'mpid' => :'mpid',
        :'mp_deviceid' => :'mp_deviceid',
        :'timestamp_unixtime_ms' => :'timestamp_unixtime_ms'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'events' => :'Array<EventBase>',
        :'source_request_id' => :'String',
        :'environment' => :'String',
        :'ip' => :'String',
        :'schema_version' => :'Integer',
        :'device_info' => :'DeviceInformation',
        :'application_info' => :'ApplicationInformation',
        :'user_attributes' => :'Object',
        :'deleted_user_attributes' => :'Array<String>',
        :'user_identities' => :'UserIdentities',
        :'api_key' => :'String',
        :'mpid' => :'Integer',
        :'mp_deviceid' => :'String',
        :'timestamp_unixtime_ms' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
      end

      if attributes.has_key?(:'source_request_id')
        self.source_request_id = attributes[:'source_request_id']
      end

      if attributes.has_key?(:'environment')
        self.environment = attributes[:'environment']
      end

      if attributes.has_key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.has_key?(:'schema_version')
        self.schema_version = attributes[:'schema_version']
      end

      if attributes.has_key?(:'device_info')
        self.device_info = attributes[:'device_info']
      end

      if attributes.has_key?(:'application_info')
        self.application_info = attributes[:'application_info']
      end

      if attributes.has_key?(:'user_attributes')
        self.user_attributes = attributes[:'user_attributes']
      end

      if attributes.has_key?(:'deleted_user_attributes')
        if (value = attributes[:'deleted_user_attributes']).is_a?(Array)
          self.deleted_user_attributes = value
        end
      end

      if attributes.has_key?(:'user_identities')
        self.user_identities = attributes[:'user_identities']
      end

      if attributes.has_key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.has_key?(:'mpid')
        self.mpid = attributes[:'mpid']
      end

      if attributes.has_key?(:'mp_deviceid')
        self.mp_deviceid = attributes[:'mp_deviceid']
      end

      if attributes.has_key?(:'timestamp_unixtime_ms')
        self.timestamp_unixtime_ms = attributes[:'timestamp_unixtime_ms']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @environment.nil?
        invalid_properties.push("invalid value for 'environment', environment cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @environment.nil?
      environment_validator = EnumAttributeValidator.new('String', ["production", "development"])
      return false unless environment_validator.valid?(@environment)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] environment Object to be assigned
    def environment=(environment)
      validator = EnumAttributeValidator.new('String', ["production", "development"])
      unless validator.valid?(environment)
        fail ArgumentError, "invalid value for 'environment', must be one of #{validator.allowable_values}."
      end
      @environment = environment
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          events == o.events &&
          source_request_id == o.source_request_id &&
          environment == o.environment &&
          ip == o.ip &&
          schema_version == o.schema_version &&
          device_info == o.device_info &&
          application_info == o.application_info &&
          user_attributes == o.user_attributes &&
          deleted_user_attributes == o.deleted_user_attributes &&
          user_identities == o.user_identities &&
          api_key == o.api_key &&
          mpid == o.mpid &&
          mp_deviceid == o.mp_deviceid &&
          timestamp_unixtime_ms == o.timestamp_unixtime_ms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [events, source_request_id, environment, ip, schema_version, device_info, application_info, user_attributes, deleted_user_attributes, user_identities, api_key, mpid, mp_deviceid, timestamp_unixtime_ms].hash
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
        temp_model = MParticle.const_get(type).new
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
