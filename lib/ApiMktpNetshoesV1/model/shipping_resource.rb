module ApiMktpNetshoesV1
  module Model
	  # 
	  class ShippingResource < BaseObject
	    attr_accessor :shipping_code, :shipping_estimate, :status, :delivery_time, :issuer, :customer, :customer_address, :items, :devolution_items, :exchange_orders, :invoice, :country, :cancellation_reason, :transport, :freight_amount, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'shipping_code' => :'shippingCode',
	        
	        # 
	        :'shipping_estimate' => :'shippingEstimate',
	        
	        # 
	        :'status' => :'status',
	        
	        # 
	        :'delivery_time' => :'deliveryTime',
	        
	        # 
	        :'issuer' => :'issuer',
	        
	        # 
	        :'customer' => :'customer',
	        
	        # 
	        :'customer_address' => :'customerAddress',
	        
	        # 
	        :'items' => :'items',
	        
	        # 
	        :'devolution_items' => :'devolutionItems',
	        
	        # 
	        :'exchange_orders' => :'exchangeOrders',
	        
	        # 
	        :'invoice' => :'invoice',
	        
	        # 
	        :'country' => :'country',
	        
	        # 
	        :'cancellation_reason' => :'cancellationReason',
	        
	        # 
	        :'transport' => :'transport',
	        
	        # 
	        :'freight_amount' => :'freightAmount',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'shipping_code' => :'int',
	        :'shipping_estimate' => :'DateTime',
	        :'status' => :'string',
	        :'delivery_time' => :'int',
	        :'issuer' => :'IssuerResource',
	        :'customer' => :'CustomerResource',
	        :'customer_address' => :'CustomerAddressResource',
	        :'items' => :'array[OrderItemResource]',
	        :'devolution_items' => :'array[DevolutionItemResource]',
	        :'exchange_orders' => :'array[string]',
	        :'invoice' => :'InvoiceResource',
	        :'country' => :'string',
	        :'cancellation_reason' => :'string',
	        :'transport' => :'TransportResource',
	        :'freight_amount' => :'double',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'shippingCode']
	        @shipping_code = attributes[:'shippingCode']
	      end
	      
	      if attributes[:'shippingEstimate']
	        @shipping_estimate = attributes[:'shippingEstimate']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'deliveryTime']
	        @delivery_time = attributes[:'deliveryTime']
	      end
	      
	      if attributes[:'issuer']
	        @issuer = attributes[:'issuer']
	      end
	      
	      if attributes[:'customer']
	        @customer = attributes[:'customer']
	      end
	      
	      if attributes[:'customerAddress']
	        @customer_address = attributes[:'customerAddress']
	      end
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'devolutionItems']
	        if (value = attributes[:'devolutionItems']).is_a?(Array)
	          @devolution_items = value
	        end
	      end
	      
	      if attributes[:'exchangeOrders']
	        if (value = attributes[:'exchangeOrders']).is_a?(Array)
	          @exchange_orders = value
	        end
	      end
	      
	      if attributes[:'invoice']
	        @invoice = attributes[:'invoice']
	      end
	      
	      if attributes[:'country']
	        @country = attributes[:'country']
	      end
	      
	      if attributes[:'cancellationReason']
	        @cancellation_reason = attributes[:'cancellationReason']
	      end
	      
	      if attributes[:'transport']
	        @transport = attributes[:'transport']
	      end
	      
	      if attributes[:'freightAmount']
	        @freight_amount = attributes[:'freightAmount']
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
