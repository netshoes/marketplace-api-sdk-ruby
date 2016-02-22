module ApiMktpNetshoesV1
  module Model
	  # 
	  class CustomerAddressResource < BaseObject
	    attr_accessor :neighborhood, :postal_code, :city, :complement, :state, :street, :number, :reference
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'neighborhood' => :'neighborhood',
	        
	        # 
	        :'postal_code' => :'postalCode',
	        
	        # 
	        :'city' => :'city',
	        
	        # 
	        :'complement' => :'complement',
	        
	        # 
	        :'state' => :'state',
	        
	        # 
	        :'street' => :'street',
	        
	        # 
	        :'number' => :'number',
	        
	        # 
	        :'reference' => :'reference'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'neighborhood' => :'string',
	        :'postal_code' => :'string',
	        :'city' => :'string',
	        :'complement' => :'string',
	        :'state' => :'string',
	        :'street' => :'string',
	        :'number' => :'string',
	        :'reference' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'neighborhood']
	        @neighborhood = attributes[:'neighborhood']
	      end
	      
	      if attributes[:'postalCode']
	        @postal_code = attributes[:'postalCode']
	      end
	      
	      if attributes[:'city']
	        @city = attributes[:'city']
	      end
	      
	      if attributes[:'complement']
	        @complement = attributes[:'complement']
	      end
	      
	      if attributes[:'state']
	        @state = attributes[:'state']
	      end
	      
	      if attributes[:'street']
	        @street = attributes[:'street']
	      end
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'reference']
	        @reference = attributes[:'reference']
	      end
	      
	    end
	  end
	
	
  end
end
