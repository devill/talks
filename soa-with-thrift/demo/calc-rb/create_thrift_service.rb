
def create_service(handler)
  server = create_server(handler)

  puts "Starting the Calculator server..."

  server.serve()
end

def create_server(handler)
  processor = Calculator::Processor.new(handler)
  transport = Thrift::ServerSocket.new(9090)
  transportFactory = Thrift::BufferedTransportFactory.new()
  Thrift::ThreadPoolServer.new(processor, transport, transportFactory)
end

