$:.push('gen-rb')
require 'thrift'
require 'calculator'
require 'calculator_service_types'

class CalculatorHandler
    def Add (first, second)
        result = Result.new()
        result.result = first + second
        return result
    end
    
    def Subtract(first, second)
        result = Result.new()
        result.result = first - second
        puts("Se ha realizado una Resta")
        return result
    end

    def Divide(first, second)
        result = Result.new()
        if second == 0
            result.error = 'ERROR: Cannot be divided by 0'
            return result
        else
            result.result = first/second
        end
        return result
    end

    def Multiply(first, second)
        result = Result.new()
        result.result = first*second
        return result
    end

    def SquareRoot(first)
        result = Result.new()
        result.result = Math.Sqrt(first)
        return result
    end

    def Pow(first, second)
        result = Result.new()
        result.result = first ** second
        return result
    end
end

handler = CalculatorHandler.new()
processor = Calculator::Processor.new(handler)
transport = Thrift::ServerSocket.new(host='0.0.0.0', port=8080)
transportFactory = Thrift::BufferedTransportFactory.new()
server = Thrift::SimpleServer.new(processor,transport,transportFactory)

puts 'The server is starting'
server.serve()