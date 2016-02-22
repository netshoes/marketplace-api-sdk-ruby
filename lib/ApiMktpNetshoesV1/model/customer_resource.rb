module ApiMktpNetshoesV1
  module Model
	  # 
	  class CustomerResource < BaseObject
	    attr_accessor :document, :state_inscription, :customer_name, :recipient_name, :trade_name, :cell_phone, :landline, :receiver_name
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'document' => :'document',
	        
	        # 
	        :'state_inscription' => :'stateInscription',
	        
	        # 
	        :'customer_name' => :'customerName',
	        
	        # 
	        :'recipient_name' => :'recipientName',
	        
	        # 
	        :'trade_name' => :'tradeName',
	        
	        # 
	        :'cell_phone' => :'cellPhone',
	        
	        # 
	        :'landline' => :'landline',
	        
	        # 
	        :'receiver_name' => :'receiverName'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'document' => :'string',
	        :'state_inscription' => :'string',
	        :'customer_name' => :'string',
	        :'recipient_name' => :'string',
	        :'trade_name' => :'string',
	        :'cell_phone' => :'string',
	        :'landline' => :'string',
	        :'receiver_name' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'document']
	        @document = attributes[:'document']
	      end
	      
	      if attributes[:'stateInscription']
	        @state_inscription = attributes[:'stateInscription']
	      end
	      
	      if attributes[:'customerName']
	        @customer_name = attributes[:'customerName']
	      end
	      
	      if attributes[:'recipientName']
	        @recipient_name = attributes[:'recipientName']
	      end
	      
	      if attributes[:'tradeName']
	        @trade_name = attributes[:'tradeName']
	      end
	      
	      if attributes[:'cellPhone']
	        @cell_phone = attributes[:'cellPhone']
	      end
	      
	      if attributes[:'landline']
	        @landline = attributes[:'landline']
	      end
	      
	      if attributes[:'receiverName']
	        @receiver_name = attributes[:'receiverName']
	      end
	      
	    end
	  end
	
	
  end
end
