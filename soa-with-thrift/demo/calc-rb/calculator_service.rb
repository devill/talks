
$:.push('../gen-rb')
require_relative 'thrift'
require_relative 'calculator_handler'
require_relative 'create_thrift_service'
require 'calculator'

create_service(CalculatorHandler.new())
