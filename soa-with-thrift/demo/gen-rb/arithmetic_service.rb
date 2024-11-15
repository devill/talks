#
# Autogenerated by Thrift Compiler (0.8.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'arithmetic_types'

            module Tutorial
              module Arithmetic
                module Gen
                  module ArithmeticService
                    class Client
                      include ::Thrift::Client

                      def add(num1, num2)
                        send_add(num1, num2)
                        return recv_add()
                      end

                      def send_add(num1, num2)
                        send_message('add', Add_args, :num1 => num1, :num2 => num2)
                      end

                      def recv_add()
                        result = receive_message(Add_result)
                        return result.success unless result.success.nil?
                        raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'add failed: unknown result')
                      end

                      def multiply(num1, num2)
                        send_multiply(num1, num2)
                        return recv_multiply()
                      end

                      def send_multiply(num1, num2)
                        send_message('multiply', Multiply_args, :num1 => num1, :num2 => num2)
                      end

                      def recv_multiply()
                        result = receive_message(Multiply_result)
                        return result.success unless result.success.nil?
                        raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'multiply failed: unknown result')
                      end

                    end

                    class Processor
                      include ::Thrift::Processor

                      def process_add(seqid, iprot, oprot)
                        args = read_args(iprot, Add_args)
                        result = Add_result.new()
                        result.success = @handler.add(args.num1, args.num2)
                        write_result(result, oprot, 'add', seqid)
                      end

                      def process_multiply(seqid, iprot, oprot)
                        args = read_args(iprot, Multiply_args)
                        result = Multiply_result.new()
                        result.success = @handler.multiply(args.num1, args.num2)
                        write_result(result, oprot, 'multiply', seqid)
                      end

                    end

                    # HELPER FUNCTIONS AND STRUCTURES

                    class Add_args
                      include ::Thrift::Struct, ::Thrift::Struct_Union
                      NUM1 = 1
                      NUM2 = 2

                      FIELDS = {
                        NUM1 => {:type => ::Thrift::Types::I32, :name => 'num1'},
                        NUM2 => {:type => ::Thrift::Types::I32, :name => 'num2'}
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
                        SUCCESS => {:type => ::Thrift::Types::I64, :name => 'success'}
                      }

                      def struct_fields; FIELDS; end

                      def validate
                      end

                      ::Thrift::Struct.generate_accessors self
                    end

                    class Multiply_args
                      include ::Thrift::Struct, ::Thrift::Struct_Union
                      NUM1 = 1
                      NUM2 = 2

                      FIELDS = {
                        NUM1 => {:type => ::Thrift::Types::I32, :name => 'num1'},
                        NUM2 => {:type => ::Thrift::Types::I32, :name => 'num2'}
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
                        SUCCESS => {:type => ::Thrift::Types::I64, :name => 'success'}
                      }

                      def struct_fields; FIELDS; end

                      def validate
                      end

                      ::Thrift::Struct.generate_accessors self
                    end

                  end

                end
              end
            end
