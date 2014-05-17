#
# Autogenerated by Thrift Compiler (0.8.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


module BinaryOperation
  ADDITION = 1
  SUBTRACTION = 2
  MULTIPLICATION = 3
  DIVISION = 4
  MODULUS = 5
  VALUE_MAP = {1 => "ADDITION", 2 => "SUBTRACTION", 3 => "MULTIPLICATION", 4 => "DIVISION", 5 => "MODULUS"}
  VALID_VALUES = Set.new([ADDITION, SUBTRACTION, MULTIPLICATION, DIVISION, MODULUS]).freeze
end

# Structs are the basic complex data structures. They are comprised of fields
# which each have an integer identifier, a type, a symbolic name, and an
# optional default value.
class ArithmeticOperation
  include ::Thrift::Struct, ::Thrift::Struct_Union
  OP = 1
  LH_TERM = 2
  RH_TERM = 3

  FIELDS = {
    OP => {:type => ::Thrift::Types::I32, :name => 'op', :enum_class => BinaryOperation},
    LH_TERM => {:type => ::Thrift::Types::DOUBLE, :name => 'lh_term'},
    RH_TERM => {:type => ::Thrift::Types::DOUBLE, :name => 'rh_term'}
  }

  def struct_fields; FIELDS; end

  def validate
    unless @op.nil? || BinaryOperation::VALID_VALUES.include?(@op)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field op!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class ArithmeticException < ::Thrift::Exception
  include ::Thrift::Struct, ::Thrift::Struct_Union
  MSG = 1
  X = 2

  FIELDS = {
    MSG => {:type => ::Thrift::Types::STRING, :name => 'msg'},
    X => {:type => ::Thrift::Types::DOUBLE, :name => 'x', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

