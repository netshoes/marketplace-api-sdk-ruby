module ApiMktpNetshoesV1
  module Model
	  # 
	  class IssuerResource < BaseObject
	    attr_accessor :supplier_cnpj, :seller_code, :seller_name, :supplier_name
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'supplier_cnpj' => :'supplierCnpj',
	        
	        # 
	        :'seller_code' => :'sellerCode',
	        
	        # 
	        :'seller_name' => :'sellerName',
	        
	        # 
	        :'supplier_name' => :'supplierName'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'supplier_cnpj' => :'string',
	        :'seller_code' => :'int',
	        :'seller_name' => :'string',
	        :'supplier_name' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'supplierCnpj']
	        @supplier_cnpj = attributes[:'supplierCnpj']
	      end
	      
	      if attributes[:'sellerCode']
	        @seller_code = attributes[:'sellerCode']
	      end
	      
	      if attributes[:'sellerName']
	        @seller_name = attributes[:'sellerName']
	      end
	      
	      if attributes[:'supplierName']
	        @supplier_name = attributes[:'supplierName']
	      end
	      
	    end
	  end
	
	
  end
end
