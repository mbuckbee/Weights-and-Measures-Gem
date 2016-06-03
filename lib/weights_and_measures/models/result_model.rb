# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module WeightsAndMeasures
  class ResultModel

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :valid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :result

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :from_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :to_type

    def initialize(valid = nil,
                   result = nil,
                   from_value = nil,
                   from_type = nil,
                   to_type = nil)
      @valid = valid
      @result = result
      @from_value = from_value
      @from_type = from_type
      @to_type = to_type

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        valid = hash["valid"]
        result = hash["result"]
        from_value = hash["from_value"]
        from_type = hash["from_type"]
        to_type = hash["to_type"]
        # Create object from extracted values
        ResultModel.new(valid,
                        result,
                        from_value,
                        from_type,
                        to_type)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['valid'] = valid
      hash['result'] = result
      hash['from_value'] = from_value
      hash['from_type'] = from_type
      hash['to_type'] = to_type
      hash
    end
  end
end
