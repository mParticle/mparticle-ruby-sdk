require 'date'

module MParticle

  class DeviceCurrentState
    attr_accessor :time_since_start_ms

    attr_accessor :battery_level

    attr_accessor :data_connection_type

    attr_accessor :data_connection_type_detail

    attr_accessor :gps_state

    attr_accessor :total_system_memory_usage_bytes

    attr_accessor :disk_space_free_bytes

    attr_accessor :cpu

    attr_accessor :system_memory_available_bytes

    attr_accessor :system_memory_low

    attr_accessor :system_memory_threshold_bytes

    attr_accessor :application_memory_available_bytes

    attr_accessor :application_memory_max_bytes

    attr_accessor :application_memory_total_bytes

    attr_accessor :device_orientation

    attr_accessor :status_bar_orientation

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
        :'time_since_start_ms' => :'time_since_start_ms',
        :'battery_level' => :'battery_level',
        :'data_connection_type' => :'data_connection_type',
        :'data_connection_type_detail' => :'data_connection_type_detail',
        :'gps_state' => :'gps_state',
        :'total_system_memory_usage_bytes' => :'total_system_memory_usage_bytes',
        :'disk_space_free_bytes' => :'disk_space_free_bytes',
        :'cpu' => :'cpu',
        :'system_memory_available_bytes' => :'system_memory_available_bytes',
        :'system_memory_low' => :'system_memory_low',
        :'system_memory_threshold_bytes' => :'system_memory_threshold_bytes',
        :'application_memory_available_bytes' => :'application_memory_available_bytes',
        :'application_memory_max_bytes' => :'application_memory_max_bytes',
        :'application_memory_total_bytes' => :'application_memory_total_bytes',
        :'device_orientation' => :'device_orientation',
        :'status_bar_orientation' => :'status_bar_orientation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'time_since_start_ms' => :'Integer',
        :'battery_level' => :'Float',
        :'data_connection_type' => :'String',
        :'data_connection_type_detail' => :'String',
        :'gps_state' => :'BOOLEAN',
        :'total_system_memory_usage_bytes' => :'Integer',
        :'disk_space_free_bytes' => :'Integer',
        :'cpu' => :'String',
        :'system_memory_available_bytes' => :'Float',
        :'system_memory_low' => :'BOOLEAN',
        :'system_memory_threshold_bytes' => :'Float',
        :'application_memory_available_bytes' => :'Float',
        :'application_memory_max_bytes' => :'Float',
        :'application_memory_total_bytes' => :'Float',
        :'device_orientation' => :'String',
        :'status_bar_orientation' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'time_since_start_ms')
        self.time_since_start_ms = attributes[:'time_since_start_ms']
      end

      if attributes.has_key?(:'battery_level')
        self.battery_level = attributes[:'battery_level']
      end

      if attributes.has_key?(:'data_connection_type')
        self.data_connection_type = attributes[:'data_connection_type']
      end

      if attributes.has_key?(:'data_connection_type_detail')
        self.data_connection_type_detail = attributes[:'data_connection_type_detail']
      end

      if attributes.has_key?(:'gps_state')
        self.gps_state = attributes[:'gps_state']
      end

      if attributes.has_key?(:'total_system_memory_usage_bytes')
        self.total_system_memory_usage_bytes = attributes[:'total_system_memory_usage_bytes']
      end

      if attributes.has_key?(:'disk_space_free_bytes')
        self.disk_space_free_bytes = attributes[:'disk_space_free_bytes']
      end

      if attributes.has_key?(:'cpu')
        self.cpu = attributes[:'cpu']
      end

      if attributes.has_key?(:'system_memory_available_bytes')
        self.system_memory_available_bytes = attributes[:'system_memory_available_bytes']
      end

      if attributes.has_key?(:'system_memory_low')
        self.system_memory_low = attributes[:'system_memory_low']
      end

      if attributes.has_key?(:'system_memory_threshold_bytes')
        self.system_memory_threshold_bytes = attributes[:'system_memory_threshold_bytes']
      end

      if attributes.has_key?(:'application_memory_available_bytes')
        self.application_memory_available_bytes = attributes[:'application_memory_available_bytes']
      end

      if attributes.has_key?(:'application_memory_max_bytes')
        self.application_memory_max_bytes = attributes[:'application_memory_max_bytes']
      end

      if attributes.has_key?(:'application_memory_total_bytes')
        self.application_memory_total_bytes = attributes[:'application_memory_total_bytes']
      end

      if attributes.has_key?(:'device_orientation')
        self.device_orientation = attributes[:'device_orientation']
      end

      if attributes.has_key?(:'status_bar_orientation')
        self.status_bar_orientation = attributes[:'status_bar_orientation']
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
      device_orientation_validator = EnumAttributeValidator.new('String', ["unknown", "portrait", "portrait_upside_down", "landscape", "LandscapeLeft", "LandscapeRight", "FaceUp", "FaceDown", "Square"])
      return false unless device_orientation_validator.valid?(@device_orientation)
      status_bar_orientation_validator = EnumAttributeValidator.new('String', ["unknown", "portrait", "portrait_upside_down", "landscape", "LandscapeLeft", "LandscapeRight", "FaceUp", "FaceDown", "Square"])
      return false unless status_bar_orientation_validator.valid?(@status_bar_orientation)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_orientation Object to be assigned
    def device_orientation=(device_orientation)
      validator = EnumAttributeValidator.new('String', ["unknown", "portrait", "portrait_upside_down", "landscape", "LandscapeLeft", "LandscapeRight", "FaceUp", "FaceDown", "Square"])
      unless validator.valid?(device_orientation)
        fail ArgumentError, "invalid value for 'device_orientation', must be one of #{validator.allowable_values}."
      end
      @device_orientation = device_orientation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_bar_orientation Object to be assigned
    def status_bar_orientation=(status_bar_orientation)
      validator = EnumAttributeValidator.new('String', ["unknown", "portrait", "portrait_upside_down", "landscape", "LandscapeLeft", "LandscapeRight", "FaceUp", "FaceDown", "Square"])
      unless validator.valid?(status_bar_orientation)
        fail ArgumentError, "invalid value for 'status_bar_orientation', must be one of #{validator.allowable_values}."
      end
      @status_bar_orientation = status_bar_orientation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          time_since_start_ms == o.time_since_start_ms &&
          battery_level == o.battery_level &&
          data_connection_type == o.data_connection_type &&
          data_connection_type_detail == o.data_connection_type_detail &&
          gps_state == o.gps_state &&
          total_system_memory_usage_bytes == o.total_system_memory_usage_bytes &&
          disk_space_free_bytes == o.disk_space_free_bytes &&
          cpu == o.cpu &&
          system_memory_available_bytes == o.system_memory_available_bytes &&
          system_memory_low == o.system_memory_low &&
          system_memory_threshold_bytes == o.system_memory_threshold_bytes &&
          application_memory_available_bytes == o.application_memory_available_bytes &&
          application_memory_max_bytes == o.application_memory_max_bytes &&
          application_memory_total_bytes == o.application_memory_total_bytes &&
          device_orientation == o.device_orientation &&
          status_bar_orientation == o.status_bar_orientation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [time_since_start_ms, battery_level, data_connection_type, data_connection_type_detail, gps_state, total_system_memory_usage_bytes, disk_space_free_bytes, cpu, system_memory_available_bytes, system_memory_low, system_memory_threshold_bytes, application_memory_available_bytes, application_memory_max_bytes, application_memory_total_bytes, device_orientation, status_bar_orientation].hash
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
