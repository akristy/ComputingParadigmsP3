class CopyFile
    String FileName
    String OldFilePath
    String CopiedFileName
    String NewFilePath

    def initialize()
        puts "I am in the CopyFileClass and I am about to copy a file."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path
    #This creates the command
    def CopyFileCommand(oldfpath, fname, nfpath)
        @Filename = fname
        @OldFilePath = oldfpath
        @CopiedFileName = "Copied" + fname
        @NewFilePath = nfpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Copying #{FileName} from #{OldFilePath} to new position: #{NewFilePath}"
    end

    #execute the Copy File class
    def execute()
        File.copy(OldFilePath, NewFilePath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of copying is deleting 
    #so I delete the file that was copied
    def undo()
        File.delete(CopiedFileName) if File.exist?(CopiedFileName)
    end


end