module Spec
  module Rails
    module Mocks
      # Set up the given mock model in preparation for an ActiveRecord::RecordInvalid call
      # For example: 
      #   @user = mock_model User
      #   prepare_for_errors_on @user
      #   @user.should_receive(:save!).and_raise(ActiveRecord::RecordInvalid.new(@user))
      # If you tried this without the call to prepare_for_errors_on, the RecordInvalid exception would not be raised.  
      def prepare_for_errors_on model
        errors = mock 'errors'
        errors.should_receive(:full_messages).and_return([])
        model.should_receive(:errors).and_return(errors)
      end
    
      # Shortcut to create a mock model that is prepared for a ActiveRecord::RecordInvalid.new(@model) call
      # Equivalent to: 
      #   @model = mock_model Model, :some => :fields
      #   prepare_for_errors_on @model
      def invalid_model class_name, stubs = {}
        model = mock_model class_name, stubs
        prepare_for_errors_on model
        return model
      end
    end
  end
end
