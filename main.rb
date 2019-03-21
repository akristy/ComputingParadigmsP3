require_relative 'CreateFile'
require_relative 'CopyFile'
require_relative 'MoveFile'
require_relative 'RenameFile'
require_relative 'DeleteFile'
require_relative 'CreateDirectory'
require_relative 'CopyDirectory'
require_relative 'MoveDirectory'
require_relative 'DeleteDirectory'
require_relative 'RenameDirectory'
require_relative 'CompositeCommand'


########################################### File Tests ###########################################################################

######################################Tests For CreateFile Class################################################################
#newFileCommand = CreateFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "Hello World!" )
#newFileCommand.description()
#newFileCommand.execute()
#newFileCommand.undo()
#################################################################################################################################

######################################Tests For CopyFile Class####################################################################
#copyFileCommand = CopyFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "C:/Users/Alexa_000/Desktop/P3 Move and copy Practice")
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
#renameFileCommand = RenameFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/test.txt", "helloworld.txt")
#renameFileCommand.description()
#renameFileCommand.execute()
#renameFileCommand.undo()
####################################################################################################################################

#####################################Tests For DeleteFile Class#####################################################################
#deleteFileCommand = DeleteFileCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/PracticeDelete.txt", "C:/Users/Alexa_000/Desktop/Trash")
#deleteFileCommand.description()
#deleteFileCommand.execute()
#deleteFileCommand.undo()
#######################################################################################################################################



############################################### Directory Tests #######################################################################



######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/testdir")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CopyDirectory Class################################################################
#copyDirectoryCommand = CopyDirectoryCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/testdir", "C:/Users/Alexa_000/Desktop/P3 Move and Copy Practice")
#copyDirectoryCommand.description()
#copyDirectoryCommand.execute()
#copyDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For MoveDirectory Class################################################################
#moveDirectoryCommand = MoveDirectoryCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/testdir", "C:/Users/Alexa_000/Desktop/P3 Move and Copy Practice")
#moveDirectoryCommand.description()
#moveDirectoryCommand.execute()
#moveDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For DeleteDirectory Class################################################################
#deleteDirectoryCommand = DeleteDirectoryCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/testdir", "C:/Users/Alexa_000/Desktop/Trash")
#deleteDirectoryCommand.description()
#deleteDirectoryCommand.execute()
#deleteDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For RenameDirectory Class################################################################
#renameDirectoryCommand = RenameDirectoryCommand.new("C:/Users/Alexa_000/Desktop/P3 Practice/testdir", "helloworldDir")
#renameDirectoryCommand.description()
#renameDirectoryCommand.execute()
#renameDirectoryCommand.undo()
#################################################################################################################################








#################################################### Tests for Professor #########################################################



######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("./DirForTests")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("./DirForTests/Trash")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("./DirForTests/Dirtestfolder1")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("./DirForTests/Dirtestfolder2")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CreateDirectory Class################################################################
#newDirectoryCommand = CreateDirectoryCommand.new("./DirForTests/Filetestfolder")
#newDirectoryCommand.description()
#newDirectoryCommand.execute()
#newDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For CreateFile Class################################################################
#newFileCommand = CreateFileCommand.new("./DirForTests/test.txt", "Hello World!" )
#newFileCommand.description()
#newFileCommand.execute()
#newFileCommand.undo()
#################################################################################################################################

######################################Tests For CopyFile Class####################################################################
#copyFileCommand = CopyFileCommand.new("./DirForTests/test.txt", "./DirForTests/Filetestfolder")
#copyFileCommand.description()
#copyFileCommand.execute()
#copyFileCommand.undo()
####################################################################################################################################

#######################################Tests For MoveFile Class#####################################################################
#moveFileCommand = MoveFileCommand.new("./DierForTests/test.txt", "./DirForTests/Filetestfolder")
#moveFileCommand.description()
#moveFileCommand.execute()
#moveFileCommand.undo()
####################################################################################################################################

######################################Tests For RenameFile Class####################################################################
#renameFileCommand = RenameFileCommand.new("./DierForTests/test.txt", "helloworld.txt")
#renameFileCommand.description()
#renameFileCommand.execute()
#renameFileCommand.undo()
####################################################################################################################################

#####################################Tests For DeleteFile Class#####################################################################
#deleteFileCommand = DeleteFileCommand.new("./DierForTests/test.txt", "./DirForTests/Trash")
#deleteFileCommand.description()
#deleteFileCommand.execute()
#deleteFileCommand.undo()
#######################################################################################################################################


######################################Tests For CopyDirectory Class################################################################
#copyDirectoryCommand = CopyDirectoryCommand.new("./DirForTests/Dirtestfolder1", "./DirForTests/Dirtestfolder2")
#copyDirectoryCommand.description()
#copyDirectoryCommand.execute()
#copyDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For MoveDirectory Class################################################################
#moveDirectoryCommand = MoveDirectoryCommand.new("./DirForTests/Dirtestfolder1", "./DirForTests/Dirtestfolder2")
#moveDirectoryCommand.description()
#moveDirectoryCommand.execute()
#moveDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For DeleteDirectory Class################################################################
#deleteDirectoryCommand = DeleteDirectoryCommand.new("./DirForTests/Dirtestfolder1", "./DirForTests/Trash")
#deleteDirectoryCommand.description()
#deleteDirectoryCommand.execute()
#deleteDirectoryCommand.undo()
#################################################################################################################################

######################################Tests For RenameDirectory Class################################################################
#renameDirectoryCommand = RenameDirectoryCommand.new("./DirForTests/Dirtestfolder1", "helloworldDir")
#renameDirectoryCommand.description()
#renameDirectoryCommand.execute()
#renameDirectoryCommand.undo()
#################################################################################################################################
