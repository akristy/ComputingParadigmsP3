class DeleteFile
    String FileName
    String FilePath
    String CopiedFilePath
    String CopiedFilename

    def initialize()
        puts "I am in the DeleteFileClass and I am about to delete a file."
    end
    #We want the file to be copied just incase we want to undo the delete
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def DeleteFileCommand(fpath, fname, cfpath)
        @Filename = fname
        @FilePath = fpath
        @CopiedFileName = "copy" + fname
        @CopiedFilePath = cfpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Deleting a file at: #{FilePath}"
    end

    #execute the Create File class
    def execute()
        File.copy(FilePath, CopiedFilePath)
        File.delete(FileName) if File.exist?(FileName)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of deleting is kind of creating 
    #so I move the copied file back to its origial location
    def undo()
        File.move(CopiedFilePath, FilePath)
        @CopiedFileName = FileName
        #File.new(FileName)
    end
end
