require 'date'

module MParticle

  class ProductAction
    attr_accessor :action

    attr_accessor :checkout_step

    attr_accessor :checkout_options

    attr_accessor :product_action_list

    attr_accessor :product_list_source

    attr_accessor :transaction_id

    attr_accessor :affiliation

    attr_accessor :total_amount

    attr_accessor :tax_amount

    attr_accessor :shipping_amount

    attr_accessor :coupon_code

    attr_accessor :products

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
        :'action' => :'action',
        :'checkout_step' => :'checkout_step',
        :'checkout_options' => :'checkout_options',
        :'product_action_list' => :'product_action_list',
        :'product_list_source' => :'product_list_source',
        :'transaction_id' => :'transaction_id',
        :'affiliation' => :'affiliation',
        :'total_amount' => :'total_amount',
        :'tax_amount' => :'tax_amount',
        :'shipping_amount' => :'shipping_amount',
        :'coupon_code' => :'coupon_code',
        :'products' => :'products'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'action' => :'String',
        :'checkout_step' => :'Integer',
        :'checkout_options' => :'String',
        :'product_action_list' => :'String',
        :'product_list_source' => :'String',
        :'transaction_id' => :'String',
        :'affiliation' => :'String',
        :'total_amount' => :'Float',
        :'tax_amount' => :'Float',
        :'shipping_amount' => :'Float',
        :'coupon_code' => :'String',
        :'products' => :'Array<Product>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'checkout_step')
        self.checkout_step = attributes[:'checkout_step']
      end

      if attributes.has_key?(:'checkout_options')
        self.checkout_options = attributes[:'checkout_options']
      end

      if attributes.has_key?(:'product_action_list')
        self.product_action_list = attributes[:'product_action_list']
      end

      if attributes.has_key?(:'product_list_source')
        self.product_list_source = attributes[:'product_list_source']
      end

      if attributes.has_key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.has_key?(:'affiliation')
        self.affiliation = attributes[:'affiliation']
      end

      if attributes.has_key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.has_key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.has_key?(:'shipping_amount')
        self.shipping_amount = attributes[:'shipping_amount']
      end

      if attributes.has_key?(:'coupon_code')
        self.coupon_code = attributes[:'coupon_code']
      end

      if attributes.has_key?(:'products')
        if (value = attributes[:'products']).is_a?(Array)
          self.products = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @action.nil?
        invalid_properties.push("invalid value for 'action', action cannot be nil.")
      end

      if @transaction_id.nil?
        invalid_properties.push("invalid value for 'transaction_id', transaction_id cannot be nil.")
      end

      if @total_amount.nil?
        invalid_properties.push("invalid value for 'total_amount', total_amount cannot be nil.")
      end

      if @products.nil?
        invalid_properties.push("invalid value for 'products', products cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @action.nil?
      action_validator = EnumAttributeValidator.new('String', ["unknown", "add_to_cart", "remove_from_cart", "checkout", "checkout_option", "click", "view_detail", "purchase", "refund", "add_to_wishlist", "remove_from_wish_list"])
      return false unless action_validator.valid?(@action)
      return false if @transaction_id.nil?
      return false if @total_amount.nil?
      return false if @products.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["unknown", "add_to_cart", "remove_from_cart", "checkout", "checkout_option", "click", "view_detail", "purchase", "refund", "add_to_wishlist", "remove_from_wish_list"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          action == o.action &&
          checkout_step == o.checkout_step &&
          checkout_options == o.checkout_options &&
          product_action_list == o.product_action_list &&
          product_list_source == o.product_list_source &&
          transaction_id == o.transaction_id &&
          affiliation == o.affiliation &&
          total_amount == o.total_amount &&
          tax_amount == o.tax_amount &&
          shipping_amount == o.shipping_amount &&
          coupon_code == o.coupon_code &&
          products == o.products
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [action, checkout_step, checkout_options, product_action_list, product_list_source, transaction_id, affiliation, total_amount, tax_amount, shipping_amount, coupon_code, products].hash
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
