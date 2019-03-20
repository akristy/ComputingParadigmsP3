require_relative 'CreateFile'

#test1 = CreateFile.new
#test2 = CreateFile.new
#test3 = CreateFile.new

newFileCommand = CreateFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "Hello World!" )
newFileCommand.execute()
#newFileCommand.undo()