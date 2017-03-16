require 'date'

module MParticle

  class ApplicationStateTransitionEvent
    attr_accessor :timestamp_unixtime_ms

    attr_accessor :event_id

    attr_accessor :source_message_id

    attr_accessor :session_id

    attr_accessor :session_uuid

    attr_accessor :custom_attributes

    attr_accessor :location

    attr_accessor :device_current_state

    attr_accessor :successfully_closed

    attr_accessor :is_first_run

    attr_accessor :is_upgrade

    attr_accessor :push_notification_payload

    attr_accessor :application_transition_type

    def self.create_install_event
      event = ApplicationStateTransitionEvent.new
      event.application_transition_type = 'application_initialized'
      event.is_first_run = true
      event.is_upgrade = false
      event
    end

    def self.create_upgrade_event
      event = ApplicationStateTransitionEvent.new
      event.application_transition_type = 'application_initialized'
      event.is_first_run = false
      event.is_upgrade = true
      event
    end

    def self.create_foreground_event
      event = ApplicationStateTransitionEvent.new
      event.application_transition_type = 'application_foreground'
      event
    end

    def self.create_background_event
      event = ApplicationStateTransitionEvent.new
      event.application_transition_type = 'application_background'
      event
    end

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
        :'timestamp_unixtime_ms' => :'timestamp_unixtime_ms',
        :'event_id' => :'event_id',
        :'source_message_id' => :'source_message_id',
        :'session_id' => :'session_id',
        :'session_uuid' => :'session_uuid',
        :'custom_attributes' => :'custom_attributes',
        :'location' => :'location',
        :'device_current_state' => :'device_current_state',
        :'successfully_closed' => :'successfully_closed',
        :'is_first_run' => :'is_first_run',
        :'is_upgrade' => :'is_upgrade',
        :'push_notification_payload' => :'push_notification_payload',
        :'application_transition_type' => :'application_transition_type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'timestamp_unixtime_ms' => :'Integer',
        :'event_id' => :'Integer',
        :'source_message_id' => :'String',
        :'session_id' => :'Integer',
        :'session_uuid' => :'String',
        :'custom_attributes' => :'Hash<String, String>',
        :'location' => :'GeoLocation',
        :'device_current_state' => :'DeviceCurrentState',
        :'successfully_closed' => :'BOOLEAN',
        :'is_first_run' => :'BOOLEAN',
        :'is_upgrade' => :'BOOLEAN',
        :'push_notification_payload' => :'String',
        :'application_transition_type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'timestamp_unixtime_ms')
        self.timestamp_unixtime_ms = attributes[:'timestamp_unixtime_ms']
      end

      if attributes.has_key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.has_key?(:'source_message_id')
        self.source_message_id = attributes[:'source_message_id']
      end

      if attributes.has_key?(:'session_id')
        self.session_id = attributes[:'session_id']
      end

      if attributes.has_key?(:'session_uuid')
        self.session_uuid = attributes[:'session_uuid']
      end

      if attributes.has_key?(:'custom_attributes')
        if (value = attributes[:'custom_attributes']).is_a?(Array)
          self.custom_attributes = value
        end
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'device_current_state')
        self.device_current_state = attributes[:'device_current_state']
      end

      if attributes.has_key?(:'successfully_closed')
        self.successfully_closed = attributes[:'successfully_closed']
      end

      if attributes.has_key?(:'is_first_run')
        self.is_first_run = attributes[:'is_first_run']
      end

      if attributes.has_key?(:'is_upgrade')
        self.is_upgrade = attributes[:'is_upgrade']
      end

      if attributes.has_key?(:'push_notification_payload')
        self.push_notification_payload = attributes[:'push_notification_payload']
      end

      if attributes.has_key?(:'application_transition_type')
        self.application_transition_type = attributes[:'application_transition_type']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @application_transition_type.nil?
        invalid_properties.push("invalid value for 'application_transition_type', application_transition_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @application_transition_type.nil?
      application_transition_type_validator = EnumAttributeValidator.new('String', ["unknown", "application_initialized", "application_exit", "application_background", "application_foreground"])
      return false unless application_transition_type_validator.valid?(@application_transition_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_transition_type Object to be assigned
    def application_transition_type=(application_transition_type)
      validator = EnumAttributeValidator.new('String', ["unknown", "application_initialized", "application_exit", "application_background", "application_foreground"])
      unless validator.valid?(application_transition_type)
        fail ArgumentError, "invalid value for 'application_transition_type', must be one of #{validator.allowable_values}."
      end
      @application_transition_type = application_transition_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timestamp_unixtime_ms == o.timestamp_unixtime_ms &&
          event_id == o.event_id &&
          source_message_id == o.source_message_id &&
          session_id == o.session_id &&
          session_uuid == o.session_uuid &&
          custom_attributes == o.custom_attributes &&
          location == o.location &&
          device_current_state == o.device_current_state &&
          successfully_closed == o.successfully_closed &&
          is_first_run == o.is_first_run &&
          is_upgrade == o.is_upgrade &&
          push_notification_payload == o.push_notification_payload &&
          application_transition_type == o.application_transition_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [timestamp_unixtime_ms, event_id, source_message_id, session_id, session_uuid, custom_attributes, location, device_current_state, successfully_closed, is_first_run, is_upgrade, push_notification_payload, application_transition_type].hash
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
