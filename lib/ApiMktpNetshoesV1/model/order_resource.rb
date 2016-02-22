module ApiMktpNetshoesV1
  module Model
	  # 
	  class OrderResource < BaseObject
	    attr_accessor :agreed_date, :payment_data, :order_date, :number, :origin_number, :total_quantity, :origin_site, :business_unit, :status, :order_type, :devolution_requested, :exchange_requested, :total_gross, :total_commission, :total_discount, :total_freight, :total_net, :shippings, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'agreed_date' => :'agreedDate',
	        
	        # 
	        :'payment_data' => :'paymentData',
	        
	        # 
	        :'order_date' => :'orderDate',
	        
	        # 
	        :'number' => :'number',
	        
	        # 
	        :'origin_number' => :'originNumber',
	        
	        # 
	        :'total_quantity' => :'totalQuantity',
	        
	        # 
	        :'origin_site' => :'originSite',
	        
	        # 
	        :'business_unit' => :'businessUnit',
	        
	        # 
	        :'status' => :'status',
	        
	        # 
	        :'order_type' => :'orderType',
	        
	        # 
	        :'devolution_requested' => :'devolutionRequested',
	        
	        # 
	        :'exchange_requested' => :'exchangeRequested',
	        
	        # 
	        :'total_gross' => :'totalGross',
	        
	        # 
	        :'total_commission' => :'totalCommission',
	        
	        # 
	        :'total_discount' => :'totalDiscount',
	        
	        # 
	        :'total_freight' => :'totalFreight',
	        
	        # 
	        :'total_net' => :'totalNet',
	        
	        # 
	        :'shippings' => :'shippings',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'agreed_date' => :'DateTime',
	        :'payment_data' => :'DateTime',
	        :'order_date' => :'DateTime',
	        :'number' => :'string',
	        :'origin_number' => :'string',
	        :'total_quantity' => :'int',
	        :'origin_site' => :'string',
	        :'business_unit' => :'string',
	        :'status' => :'string',
	        :'order_type' => :'string',
	        :'devolution_requested' => :'boolean',
	        :'exchange_requested' => :'boolean',
	        :'total_gross' => :'double',
	        :'total_commission' => :'double',
	        :'total_discount' => :'double',
	        :'total_freight' => :'double',
	        :'total_net' => :'double',
	        :'shippings' => :'array[ShippingResource]',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'agreedDate']
	        @agreed_date = attributes[:'agreedDate']
	      end
	      
	      if attributes[:'paymentData']
	        @payment_data = attributes[:'paymentData']
	      end
	      
	      if attributes[:'orderDate']
	        @order_date = attributes[:'orderDate']
	      end
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'originNumber']
	        @origin_number = attributes[:'originNumber']
	      end
	      
	      if attributes[:'totalQuantity']
	        @total_quantity = attributes[:'totalQuantity']
	      end
	      
	      if attributes[:'originSite']
	        @origin_site = attributes[:'originSite']
	      end
	      
	      if attributes[:'businessUnit']
	        @business_unit = attributes[:'businessUnit']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'orderType']
	        @order_type = attributes[:'orderType']
	      end
	      
	      if attributes[:'devolutionRequested']
	        @devolution_requested = attributes[:'devolutionRequested']
	      end
	      
	      if attributes[:'exchangeRequested']
	        @exchange_requested = attributes[:'exchangeRequested']
	      end
	      
	      if attributes[:'totalGross']
	        @total_gross = attributes[:'totalGross']
	      end
	      
	      if attributes[:'totalCommission']
	        @total_commission = attributes[:'totalCommission']
	      end
	      
	      if attributes[:'totalDiscount']
	        @total_discount = attributes[:'totalDiscount']
	      end
	      
	      if attributes[:'totalFreight']
	        @total_freight = attributes[:'totalFreight']
	      end
	      
	      if attributes[:'totalNet']
	        @total_net = attributes[:'totalNet']
	      end
	      
	      if attributes[:'shippings']
	        if (value = attributes[:'shippings']).is_a?(Array)
	          @shippings = value
	        end
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
