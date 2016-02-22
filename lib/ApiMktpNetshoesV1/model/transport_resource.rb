module ApiMktpNetshoesV1
  module Model
	  # 
	  class TransportResource < BaseObject
	    attr_accessor :tracking_number, :tracking_link, :tracking_ship_date, :delivery_date, :ship_date, :delivery_service, :carrier
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'tracking_number' => :'trackingNumber',
	        
	        # 
	        :'tracking_link' => :'trackingLink',
	        
	        # 
	        :'tracking_ship_date' => :'trackingShipDate',
	        
	        # 
	        :'delivery_date' => :'deliveryDate',
	        
	        # 
	        :'ship_date' => :'shipDate',
	        
	        # 
	        :'delivery_service' => :'deliveryService',
	        
	        # 
	        :'carrier' => :'carrier'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'tracking_number' => :'string',
	        :'tracking_link' => :'string',
	        :'tracking_ship_date' => :'DateTime',
	        :'delivery_date' => :'DateTime',
	        :'ship_date' => :'DateTime',
	        :'delivery_service' => :'string',
	        :'carrier' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'trackingNumber']
	        @tracking_number = attributes[:'trackingNumber']
	      end
	      
	      if attributes[:'trackingLink']
	        @tracking_link = attributes[:'trackingLink']
	      end
	      
	      if attributes[:'trackingShipDate']
	        @tracking_ship_date = attributes[:'trackingShipDate']
	      end
	      
	      if attributes[:'deliveryDate']
	        @delivery_date = attributes[:'deliveryDate']
	      end
	      
	      if attributes[:'shipDate']
	        @ship_date = attributes[:'shipDate']
	      end
	      
	      if attributes[:'deliveryService']
	        @delivery_service = attributes[:'deliveryService']
	      end
	      
	      if attributes[:'carrier']
	        @carrier = attributes[:'carrier']
	      end
	      
	    end
	  end
	
	
  end
end
