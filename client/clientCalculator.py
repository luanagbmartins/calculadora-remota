import sys

sys.path.append("gen-py")
from calculatorService import Calculator
from calculatorService import ttypes
from thrift import Thrift
from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol


transport = TSocket.TSocket(host="0.0.0.0", port=8080)
transport = TTransport.TBufferedTransport(transport)
protocol = TBinaryProtocol.TBinaryProtocol(transport)
cliente = Calculator.Client(protocol)


transport.open()


def result(result):
    if result != None:
        print("The result is: ")
        print(result.result)
    else:
        print("The result is: ")
        print(result.error)


while True:
    print("\t MENU ")
    print("1.- Add two numbers ")
    print("2.- Subtract two numbers ")
    print("3.- Divide two numbers ")
    print("4.- Multiply two numbers ")
    print("5.- Square root ")
    print("6.- Exponentiation of a base number B by exponent E ")
    print("7.- Exit")
    option = int(input("Select an option: "))

    if option == 1:
        first = int(input("Enter the first number: "))
        second = int(input("Enter the second number: "))
        result(cliente.Add(first, second))
    elif option == 2:
        first = int(input("Enter the first number: "))
        second = int(input("Enter the second number: "))
        result(cliente.Subtract(first, second))
    elif option == 3:
        first = int(input("Enter the first number: "))
        second = int(input("Enter the second number: "))
        result(cliente.Divide(first, second))
    elif option == 4:
        first = int(input("Enter the first number: "))
        second = int(input("Enter the second number: "))
        result(cliente.Multiply(first, second))
    elif option == 5:
        first = int(input("Enter the number: "))
        result(cliente.SquareRoot(first))
    elif option == 6:
        first = int(input("Enter the first number: "))
        second = int(input("Enter the second number: "))
        result(cliente.Pow(first, second))
    elif option == 7:
        break
    else:
        print("Choose an option from 1 to 5")
transport.close()
