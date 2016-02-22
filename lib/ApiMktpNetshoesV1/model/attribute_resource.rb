module ApiMktpNetshoesV1
  module Model
	  # 
	  class AttributeResource < BaseObject
	    attr_accessor :name, :value, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'name' => :'name',
	        
	        # 
	        :'value' => :'value',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'name' => :'string',
	        :'value' => :'string',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'value']
	        @value = attributes[:'value']
	      end
	      
	      if attributes[:'links']
	        if (value = attributes[:'links']).is_a?(Array)
	          @links = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
