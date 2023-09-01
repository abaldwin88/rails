# frozen_string_literal: true

module ActiveRecord
  class ProtectedVirtualAttributError < ActiveRecordError
  end

  module ProtectedVirtualAttributes
    extend ActiveSupport::Concern

    if ActiveRecord.raise_on_assign_to_virtual_attribute
      include(HasProtectedVirtualAttributes)
    end

    included do
      # TODO: Need to assign this somehow
      class_attribute :_virtual_attributes, instance_accessor: false, default: []
    end

    module ClassMethods

      def virtual_attribute?(name) # :nodoc:
        _virtual_attributes.include?(name)
      end
    end

    module HasProtectedVirtualAttributes # :nodoc:
      # TODO: Changing arguments ok?
      def write_attribute(attr_name, value, allow_virtual_attr_write: false)
        if !allow_virtual_attr_write && self.class.virtual_attribute?(attr_name.to_s)
          raise ProtectedVirtualAttributError.new(attr_name)
        end

        super
      end

      def _write_attribute(attr_name, value, allow_virtual_attr_write: false)
        if !allow_virtual_attr_write && self.class.virtual_attribute?(attr_name.to_s)
          raise ProtectedVirtualAttributError.new(attr_name)
        end

        super
      end
    end
  end
end
