require 'date'

module MParticle

  class UserIdentities
    attr_accessor :other

    attr_accessor :customerid

    attr_accessor :facebook

    attr_accessor :twitter

    attr_accessor :google

    attr_accessor :microsoft

    attr_accessor :yahoo

    attr_accessor :email

    attr_accessor :_alias

    attr_accessor :facebook_custom_audience_id

    attr_accessor :other_id_2

    attr_accessor :other_id_3

    attr_accessor :other_id_4

    attr_accessor :other_id_5

    attr_accessor :other_id_6

    attr_accessor :other_id_7

    attr_accessor :other_id_8

    attr_accessor :other_id_9

    attr_accessor :other_id_10

    attr_accessor :mobile_number

    attr_accessor :phone_number_2

    attr_accessor :phone_number_3


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'other' => :'other',
        :'customerid' => :'customerid',
        :'facebook' => :'facebook',
        :'twitter' => :'twitter',
        :'google' => :'google',
        :'microsoft' => :'microsoft',
        :'yahoo' => :'yahoo',
        :'email' => :'email',
        :'_alias' => :'alias',
        :'facebook_custom_audience_id' => :'facebook_custom_audience_id',
        :'other_id_2' => :'other_id_2',
        :'other_id_3' => :'other_id_3',
        :'other_id_4' => :'other_id_4',
        :'other_id_5' => :'other_id_5',
        :'other_id_6' => :'other_id_6',
        :'other_id_7' => :'other_id_7',
        :'other_id_8' => :'other_id_8',
        :'other_id_9' => :'other_id_9',
        :'other_id_10' => :'other_id_10',
        :'mobile_number' => :'mobile_number',
        :'phone_number_2' => :'phone_number_2',
        :'phone_number_3' => :'phone_number_3'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'other' => :'String',
        :'customerid' => :'String',
        :'facebook' => :'String',
        :'twitter' => :'String',
        :'google' => :'String',
        :'microsoft' => :'String',
        :'yahoo' => :'String',
        :'email' => :'String',
        :'_alias' => :'String',
        :'facebook_custom_audience_id' => :'String',
        :'other_id_2' => :'String',
        :'other_id_3' => :'String',
        :'other_id_4' => :'String',
        :'other_id_5' => :'String',
        :'other_id_6' => :'String',
        :'other_id_7' => :'String',
        :'other_id_8' => :'String',
        :'other_id_9' => :'String',
        :'other_id_10' => :'String',
        :'mobile_number' => :'String',
        :'phone_number_2' => :'String',
        :'phone_number_3' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'other')
        self.other = attributes[:'other']
      end

      if attributes.has_key?(:'customerid')
        self.customerid = attributes[:'customerid']
      end

      if attributes.has_key?(:'facebook')
        self.facebook = attributes[:'facebook']
      end

      if attributes.has_key?(:'twitter')
        self.twitter = attributes[:'twitter']
      end

      if attributes.has_key?(:'google')
        self.google = attributes[:'google']
      end

      if attributes.has_key?(:'microsoft')
        self.microsoft = attributes[:'microsoft']
      end

      if attributes.has_key?(:'yahoo')
        self.yahoo = attributes[:'yahoo']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'alias')
        self._alias = attributes[:'alias']
      end

      if attributes.has_key?(:'facebook_custom_audience_id')
        self.facebook_custom_audience_id = attributes[:'facebook_custom_audience_id']
      end

      if attributes.has_key?(:'other_id_2')
        self.other_id_2 = attributes[:'other_id_2']
      end

      if attributes.has_key?(:'other_id_3')
        self.other_id_3 = attributes[:'other_id_3']
      end

      if attributes.has_key?(:'other_id_4')
        self.other_id_4 = attributes[:'other_id_4']
      end

      if attributes.has_key?(:'other_id_5')
        self.other_id_5 = attributes[:'other_id_5']
      end

      if attributes.has_key?(:'other_id_6')
        self.other_id_6 = attributes[:'other_id_6']
      end

      if attributes.has_key?(:'other_id_7')
        self.other_id_7 = attributes[:'other_id_7']
      end

      if attributes.has_key?(:'other_id_8')
        self.other_id_8 = attributes[:'other_id_8']
      end

      if attributes.has_key?(:'other_id_9')
        self.other_id_9 = attributes[:'other_id_9']
      end

      if attributes.has_key?(:'other_id_10')
        self.other_id_10 = attributes[:'other_id_10']
      end

      if attributes.has_key?(:'mobile_number')
        self.mobile_number = attributes[:'mobile_number']
      end

      if attributes.has_key?(:'phone_number_2')
        self.phone_number_2 = attributes[:'phone_number_2']
      end

      if attributes.has_key?(:'phone_number_3')
        self.phone_number_3 = attributes[:'phone_number_3']
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          other == o.other &&
          customerid == o.customerid &&
          facebook == o.facebook &&
          twitter == o.twitter &&
          google == o.google &&
          microsoft == o.microsoft &&
          yahoo == o.yahoo &&
          email == o.email &&
          _alias == o._alias &&
          facebook_custom_audience_id == o.facebook_custom_audience_id &&
          other_id_2 == o.other_id_2 &&
          other_id_3 == o.other_id_3 &&
          other_id_4 == o.other_id_4 &&
          other_id_5 == o.other_id_5 &&
          other_id_6 == o.other_id_6 &&
          other_id_7 == o.other_id_7 &&
          other_id_8 == o.other_id_8 &&
          other_id_9 == o.other_id_9 &&
          other_id_10 == o.other_id_10 &&
          mobile_number == o.mobile_number &&
          phone_number_2 == o.phone_number_2 &&
          phone_number_3 == o.phone_number_3
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [other, customerid, facebook, twitter, google, microsoft, yahoo, email, _alias, facebook_custom_audience_id, other_id_2, other_id_3, other_id_4, other_id_5, other_id_6, other_id_7, other_id_8, other_id_9, other_id_10, mobile_number, phone_number_2, phone_number_3].hash
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
