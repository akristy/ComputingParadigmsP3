require_relative 'CreateFile'
require_relative 'CopyFile'
require_relative 'MoveFile'
require_relative 'RenameFile'
require_relative 'DeleteFile'

#test1 = CreateFile.new
#test2 = CreateFile.new
#test3 = CreateFile.new


######################################Tests For CreateFile Class################################################################
#newFileCommand = CreateFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "Hello World!" )
#newFileCommand.description()
#newFileCommand.execute()
#newFileCommand.undo()
#################################################################################################################################

######################################Tests For CopyFile Class####################################################################
#copyFileCommand = CopyFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "C:/Users/Alexa_000/Desktop/P3 Move and copy Practice/copiedtext.txt")
#copyFileCommand.description()
#copyFileCommand.execute()
#copyFileCommand.undo()
####################################################################################################################################

#######################################Tests For MoveFile Class#####################################################################
#moveFileCommand = MoveFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "C:/Users/Alexa_000/Desktop/P3 Move and copy Practice")
#moveFileCommand.description()
#moveFileCommand.execute()
#moveFileCommand.undo()
####################################################################################################################################

######################################Tests For RenameFile Class####################################################################
#renameFileCommand = RenameFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "C:/Users/Alexa_000/Desktop/P3 Practice/helloworld.txt")
#renameFileCommand.description()
#renameFileCommand.execute()
#renameFileCommand.undo()
####################################################################################################################################

#####################################Tests For DeleteFile Class#####################################################################
deleteFileCommand = DeleteFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/PracticeDelete.txt", "C:/Users/Alexa_000/Desktop/Trash")
deleteFileCommand.description()
#deleteFileCommand.execute()
deleteFileCommand.undo()
#######################################################################################################################################