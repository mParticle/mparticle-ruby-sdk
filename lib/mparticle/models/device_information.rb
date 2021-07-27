require 'date'

module MParticle

  class DeviceInformation
    attr_accessor :brand

    attr_accessor :product

    attr_accessor :device

    attr_accessor :android_uuid

    attr_accessor :device_manufacturer

    attr_accessor :platform

    attr_accessor :os_version

    attr_accessor :device_model

    attr_accessor :screen_height

    attr_accessor :screen_width

    attr_accessor :screen_dpi

    attr_accessor :device_country

    attr_accessor :locale_language

    attr_accessor :locale_country

    attr_accessor :network_country

    attr_accessor :network_carrier

    attr_accessor :network_code

    attr_accessor :network_mobile_country_code

    attr_accessor :timezone_offset

    attr_accessor :build_identifier

    attr_accessor :http_header_user_agent

    attr_accessor :ios_advertising_id

    attr_accessor :push_token

    attr_accessor :cpu_architecture

    attr_accessor :is_tablet

    attr_accessor :push_notification_sound_enabled

    attr_accessor :push_notification_vibrate_enabled

    attr_accessor :radio_access_technology

    attr_accessor :supports_telephony

    attr_accessor :has_nfc

    attr_accessor :bluetooth_enabled

    attr_accessor :bluetooth_version

    attr_accessor :att_timestamp_unixtime_ms

    attr_accessor :att_authorization_status

    attr_accessor :ios_idfv

    attr_accessor :android_advertising_id

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
        :'brand' => :'brand',
        :'product' => :'product',
        :'device' => :'device',
        :'android_uuid' => :'android_uuid',
        :'device_manufacturer' => :'device_manufacturer',
        :'platform' => :'platform',
        :'os_version' => :'os_version',
        :'device_model' => :'device_model',
        :'screen_height' => :'screen_height',
        :'screen_width' => :'screen_width',
        :'screen_dpi' => :'screen_dpi',
        :'device_country' => :'device_country',
        :'locale_language' => :'locale_language',
        :'locale_country' => :'locale_country',
        :'network_country' => :'network_country',
        :'network_carrier' => :'network_carrier',
        :'network_code' => :'network_code',
        :'network_mobile_country_code' => :'network_mobile_country_code',
        :'timezone_offset' => :'timezone_offset',
        :'build_identifier' => :'build_identifier',
        :'http_header_user_agent' => :'http_header_user_agent',
        :'ios_advertising_id' => :'ios_advertising_id',
        :'push_token' => :'push_token',
        :'cpu_architecture' => :'cpu_architecture',
        :'is_tablet' => :'is_tablet',
        :'push_notification_sound_enabled' => :'push_notification_sound_enabled',
        :'push_notification_vibrate_enabled' => :'push_notification_vibrate_enabled',
        :'radio_access_technology' => :'radio_access_technology',
        :'supports_telephony' => :'supports_telephony',
        :'has_nfc' => :'has_nfc',
        :'bluetooth_enabled' => :'bluetooth_enabled',
        :'bluetooth_version' => :'bluetooth_version',
        :'att_timestamp_unixtime_ms' => :'att_timestamp_unixtime_ms',
        :'att_authorization_status' => :'att_authorization_status',
        :'ios_idfv' => :'ios_idfv',
        :'android_advertising_id' => :'android_advertising_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'brand' => :'String',
        :'product' => :'String',
        :'device' => :'String',
        :'android_uuid' => :'String',
        :'device_manufacturer' => :'String',
        :'platform' => :'String',
        :'os_version' => :'String',
        :'device_model' => :'String',
        :'screen_height' => :'Integer',
        :'screen_width' => :'Integer',
        :'screen_dpi' => :'Integer',
        :'device_country' => :'String',
        :'locale_language' => :'String',
        :'locale_country' => :'String',
        :'network_country' => :'String',
        :'network_carrier' => :'String',
        :'network_code' => :'String',
        :'network_mobile_country_code' => :'String',
        :'timezone_offset' => :'Integer',
        :'build_identifier' => :'String',
        :'http_header_user_agent' => :'String',
        :'ios_advertising_id' => :'String',
        :'push_token' => :'String',
        :'cpu_architecture' => :'String',
        :'is_tablet' => :'BOOLEAN',
        :'push_notification_sound_enabled' => :'BOOLEAN',
        :'push_notification_vibrate_enabled' => :'BOOLEAN',
        :'radio_access_technology' => :'String',
        :'supports_telephony' => :'BOOLEAN',
        :'has_nfc' => :'BOOLEAN',
        :'bluetooth_enabled' => :'BOOLEAN',
        :'bluetooth_version' => :'String',
        :'att_timestamp_unixtime_ms' => :'Integer',
        :'att_authorization_status' => :'String',
        :'ios_idfv' => :'String',
        :'android_advertising_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'device')
        self.device = attributes[:'device']
      end

      if attributes.has_key?(:'android_uuid')
        self.android_uuid = attributes[:'android_uuid']
      end

      if attributes.has_key?(:'device_manufacturer')
        self.device_manufacturer = attributes[:'device_manufacturer']
      end

      if attributes.has_key?(:'platform')
        self.platform = attributes[:'platform']
      end

      if attributes.has_key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.has_key?(:'device_model')
        self.device_model = attributes[:'device_model']
      end

      if attributes.has_key?(:'screen_height')
        self.screen_height = attributes[:'screen_height']
      end

      if attributes.has_key?(:'screen_width')
        self.screen_width = attributes[:'screen_width']
      end

      if attributes.has_key?(:'screen_dpi')
        self.screen_dpi = attributes[:'screen_dpi']
      end

      if attributes.has_key?(:'device_country')
        self.device_country = attributes[:'device_country']
      end

      if attributes.has_key?(:'locale_language')
        self.locale_language = attributes[:'locale_language']
      end

      if attributes.has_key?(:'locale_country')
        self.locale_country = attributes[:'locale_country']
      end

      if attributes.has_key?(:'network_country')
        self.network_country = attributes[:'network_country']
      end

      if attributes.has_key?(:'network_carrier')
        self.network_carrier = attributes[:'network_carrier']
      end

      if attributes.has_key?(:'network_code')
        self.network_code = attributes[:'network_code']
      end

      if attributes.has_key?(:'network_mobile_country_code')
        self.network_mobile_country_code = attributes[:'network_mobile_country_code']
      end

      if attributes.has_key?(:'timezone_offset')
        self.timezone_offset = attributes[:'timezone_offset']
      end

      if attributes.has_key?(:'build_identifier')
        self.build_identifier = attributes[:'build_identifier']
      end

      if attributes.has_key?(:'http_header_user_agent')
        self.http_header_user_agent = attributes[:'http_header_user_agent']
      end

      if attributes.has_key?(:'ios_advertising_id')
        self.ios_advertising_id = attributes[:'ios_advertising_id']
      end

      if attributes.has_key?(:'push_token')
        self.push_token = attributes[:'push_token']
      end

      if attributes.has_key?(:'cpu_architecture')
        self.cpu_architecture = attributes[:'cpu_architecture']
      end

      if attributes.has_key?(:'is_tablet')
        self.is_tablet = attributes[:'is_tablet']
      end

      if attributes.has_key?(:'push_notification_sound_enabled')
        self.push_notification_sound_enabled = attributes[:'push_notification_sound_enabled']
      end

      if attributes.has_key?(:'push_notification_vibrate_enabled')
        self.push_notification_vibrate_enabled = attributes[:'push_notification_vibrate_enabled']
      end

      if attributes.has_key?(:'radio_access_technology')
        self.radio_access_technology = attributes[:'radio_access_technology']
      end

      if attributes.has_key?(:'supports_telephony')
        self.supports_telephony = attributes[:'supports_telephony']
      end

      if attributes.has_key?(:'has_nfc')
        self.has_nfc = attributes[:'has_nfc']
      end

      if attributes.has_key?(:'bluetooth_enabled')
        self.bluetooth_enabled = attributes[:'bluetooth_enabled']
      end

      if attributes.has_key?(:'bluetooth_version')
        self.bluetooth_version = attributes[:'bluetooth_version']
      end

      if attributes.has_key?(:'att_timestamp_unixtime_ms')
        self.att_timestamp_unixtime_ms = attributes[:'att_timestamp_unixtime_ms']
      end

      if attributes.has_key?(:'att_authorization_status')
        self.att_authorization_status = attributes[:'att_authorization_status']
      end

      if attributes.has_key?(:'ios_idfv')
        self.ios_idfv = attributes[:'ios_idfv']
      end

      if attributes.has_key?(:'android_advertising_id')
        self.android_advertising_id = attributes[:'android_advertising_id']
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
      platform_validator = EnumAttributeValidator.new('String', ["Unknown", "iOS", "Android", "web", "tvOS", "roku", "out_of_band", "alexa", "smart_tv", "fire_tv", "xbox"])
      att_validator = EnumAttributeValidator.new('String', ["authorized", "denied", "not_determined", "restricted"])
      return false unless platform_validator.valid?(@platform)
      return false unless att_validator.valid?(@att_authorization_status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] platform Object to be assigned
    def platform=(platform)
      validator = EnumAttributeValidator.new('String', ["Unknown", "iOS", "Android", "web", "tvOS", "roku", "out_of_band", "alexa", "smart_tv", "fire_tv", "xbox"])
      unless validator.valid?(platform)
        fail ArgumentError, "invalid value for 'platform', must be one of #{validator.allowable_values}."
      end
      @platform = platform
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] att_authorization_status Object to be assigned
    def att_authorization_status=(att_authorization_status)
      validator = EnumAttributeValidator.new('String', ["authorized", "denied", "not_determined", "restricted"])
      unless validator.valid?(att_authorization_status)
        fail ArgumentError, "invalid value for 'att_authorization_status', must be one of #{validator.allowable_values}."
      end
      @att_authorization_status = att_authorization_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          brand == o.brand &&
          product == o.product &&
          device == o.device &&
          android_uuid == o.android_uuid &&
          device_manufacturer == o.device_manufacturer &&
          platform == o.platform &&
          os_version == o.os_version &&
          device_model == o.device_model &&
          screen_height == o.screen_height &&
          screen_width == o.screen_width &&
          screen_dpi == o.screen_dpi &&
          device_country == o.device_country &&
          locale_language == o.locale_language &&
          locale_country == o.locale_country &&
          network_country == o.network_country &&
          network_carrier == o.network_carrier &&
          network_code == o.network_code &&
          network_mobile_country_code == o.network_mobile_country_code &&
          timezone_offset == o.timezone_offset &&
          build_identifier == o.build_identifier &&
          http_header_user_agent == o.http_header_user_agent &&
          ios_advertising_id == o.ios_advertising_id &&
          push_token == o.push_token &&
          cpu_architecture == o.cpu_architecture &&
          is_tablet == o.is_tablet &&
          push_notification_sound_enabled == o.push_notification_sound_enabled &&
          push_notification_vibrate_enabled == o.push_notification_vibrate_enabled &&
          radio_access_technology == o.radio_access_technology &&
          supports_telephony == o.supports_telephony &&
          has_nfc == o.has_nfc &&
          bluetooth_enabled == o.bluetooth_enabled &&
          bluetooth_version == o.bluetooth_version &&
          att_timestamp_unixtime_ms == o.att_timestamp_unixtime_ms &&
          att_authorization_status == o.att_authorization_status &&
          ios_idfv == o.ios_idfv &&
          android_advertising_id == o.android_advertising_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [brand, product, device, android_uuid, device_manufacturer, platform, os_version, device_model, screen_height, screen_width, screen_dpi, device_country, locale_language, locale_country, network_country, network_carrier, network_code, network_mobile_country_code, timezone_offset, build_identifier, http_header_user_agent, ios_advertising_id, push_token, cpu_architecture, is_tablet, push_notification_sound_enabled, push_notification_vibrate_enabled, radio_access_technology, supports_telephony, has_nfc, bluetooth_enabled, bluetooth_version, att_timestamp_unixtime_ms, att_authorization_status, ios_idfv, android_advertising_id].hash
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
