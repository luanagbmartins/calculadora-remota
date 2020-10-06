#
# Autogenerated by Thrift Compiler (0.14.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'calculator_service_types'

module Calculator
  class Client
    include ::Thrift::Client

    def Add(first, second)
      send_Add(first, second)
      return recv_Add()
    end

    def send_Add(first, second)
      send_message('Add', Add_args, :first => first, :second => second)
    end

    def recv_Add()
      result = receive_message(Add_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Add failed: unknown result')
    end

    def Subtract(first, second)
      send_Subtract(first, second)
      return recv_Subtract()
    end

    def send_Subtract(first, second)
      send_message('Subtract', Subtract_args, :first => first, :second => second)
    end

    def recv_Subtract()
      result = receive_message(Subtract_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Subtract failed: unknown result')
    end

    def Divide(first, second)
      send_Divide(first, second)
      return recv_Divide()
    end

    def send_Divide(first, second)
      send_message('Divide', Divide_args, :first => first, :second => second)
    end

    def recv_Divide()
      result = receive_message(Divide_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Divide failed: unknown result')
    end

    def Multiply(first, second)
      send_Multiply(first, second)
      return recv_Multiply()
    end

    def send_Multiply(first, second)
      send_message('Multiply', Multiply_args, :first => first, :second => second)
    end

    def recv_Multiply()
      result = receive_message(Multiply_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Multiply failed: unknown result')
    end

    def SquareRoot(first)
      send_SquareRoot(first)
      return recv_SquareRoot()
    end

    def send_SquareRoot(first)
      send_message('SquareRoot', SquareRoot_args, :first => first)
    end

    def recv_SquareRoot()
      result = receive_message(SquareRoot_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'SquareRoot failed: unknown result')
    end

    def Pow(first, second)
      send_Pow(first, second)
      return recv_Pow()
    end

    def send_Pow(first, second)
      send_message('Pow', Pow_args, :first => first, :second => second)
    end

    def recv_Pow()
      result = receive_message(Pow_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'Pow failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_Add(seqid, iprot, oprot)
      args = read_args(iprot, Add_args)
      result = Add_result.new()
      result.success = @handler.Add(args.first, args.second)
      write_result(result, oprot, 'Add', seqid)
    end

    def process_Subtract(seqid, iprot, oprot)
      args = read_args(iprot, Subtract_args)
      result = Subtract_result.new()
      result.success = @handler.Subtract(args.first, args.second)
      write_result(result, oprot, 'Subtract', seqid)
    end

    def process_Divide(seqid, iprot, oprot)
      args = read_args(iprot, Divide_args)
      result = Divide_result.new()
      result.success = @handler.Divide(args.first, args.second)
      write_result(result, oprot, 'Divide', seqid)
    end

    def process_Multiply(seqid, iprot, oprot)
      args = read_args(iprot, Multiply_args)
      result = Multiply_result.new()
      result.success = @handler.Multiply(args.first, args.second)
      write_result(result, oprot, 'Multiply', seqid)
    end

    def process_SquareRoot(seqid, iprot, oprot)
      args = read_args(iprot, SquareRoot_args)
      result = SquareRoot_result.new()
      result.success = @handler.SquareRoot(args.first)
      write_result(result, oprot, 'SquareRoot', seqid)
    end

    def process_Pow(seqid, iprot, oprot)
      args = read_args(iprot, Pow_args)
      result = Pow_result.new()
      result.success = @handler.Pow(args.first, args.second)
      write_result(result, oprot, 'Pow', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Add_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1
    SECOND = 2

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::DOUBLE, :name => 'second'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Add_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Subtract_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1
    SECOND = 2

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::DOUBLE, :name => 'second'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Subtract_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Divide_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1
    SECOND = 2

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::DOUBLE, :name => 'second'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Divide_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Multiply_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1
    SECOND = 2

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::DOUBLE, :name => 'second'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Multiply_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class SquareRoot_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class SquareRoot_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Pow_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 1
    SECOND = 2

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::DOUBLE, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::DOUBLE, :name => 'second'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Pow_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end
