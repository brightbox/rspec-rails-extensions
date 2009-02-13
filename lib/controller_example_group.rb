module Spec
  module Rails
    module Example
      class ControllerExampleGroup < FunctionalExampleGroup
        # Perform a pseudo HTTP GET, performing any code in the block beforehand.  This is to allow you to set up expectations on your mocks whilst keeping the code readable.   
        # For example: 
        #   on_getting :show, :id => '25' do
        #     @person = mock_model Person
        #     Person.should_receive(:find).with('25').and_return(@person)
        #   end
        # If you want an XMLHTTPRequest pass in :as_xhr => true in the parameters
        # (don't worry - it won't be passed to your controller)
        # For example:
        #   on_getting :show, :id => '25', :as_xhr => true do
        #     whatever
        #   end
        def on_getting page, parameters = {}
          yield if block_given?
          is_xhr_request = parameters.delete(:as_xhr)
          if is_xhr_request
            xhr :get, page, parameters
          else
            get page, parameters
          end
        end

        # Perform a pseudo HTTP POST, performing any code in the block beforehand.  This is to allow you to set up expectations on your mocks whilst keeping the code readable.   
        # As with on_getting, use :as_xhr => true to make this an XMLHTTPRequest
        def on_posting_to page, parameters = {}
          yield if block_given?
          is_xhr_request = parameters.delete(:as_xhr)
          if is_xhr_request
            xhr :post, page, parameters
          else
            post page, parameters
          end
        end
        
        # Perform a pseudo HTTP PUT, performing any code in the block beforehand.  This is to allow you to set up expectations on your mocks whilst keeping the code readable.   
        # As with on_getting, use :as_xhr => true to make this an XMLHTTPRequest
        def on_putting_to page, parameters = {}
          yield if block_given?
          is_xhr_request = parameters.delete(:as_xhr)
          if is_xhr_request
            xhr :put, page, parameters
          else
            put page, parameters
          end
        end
        
        # Perform a pseudo HTTP DELETE, performing any code in the block beforehand.  This is to allow you to set up expectations on your mocks whilst keeping the code readable.   
        # As with on_getting, use :as_xhr => true to make this an XMLHTTPRequest
        def on_deleting_from page, parameters = {}
          yield if block_given?
          is_xhr_request = parameters.delete(:as_xhr)
          if is_xhr_request
            xhr :delete, page, parameters
          else
            delete page, parameters
          end
        end
      end
    end
  end
end