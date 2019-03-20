class RenameFile
    String OldFileName
    String NewFileName

    def initialize()
        puts "I am in the RenameFileClass and I am about to rename a file."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def CreateFileCommand(ofname, nfname)
        @OldFileName = ofname
        @NewFileName = nfpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Renaming #{OldFileName} file to: #{NewFileName}"
    end

    #execute the Rename File class
    def execute()
        File.rename(OldFileName, NewFileName)
    end

    #Since the undo function is supposed to do the inverse of the command the 
    #inverse of renaming is renaming it again to the original name 
    #so rename the file 
    def undo()
        File.rename(NewFileName, OldFileName)
    end

end
