class MoveFile
    String FileName
    String OldFilePath
    String NewFilePath

    def initialize()
        puts "I am in the MoveFileClass and I am about to move a file."
    end
    #Not sure what to put as the parameters. I know that it needs to take a file name and a path as well as a new path to move the file
    #This creates the command
    def MoveFileCommand(ofpath, fname, nfpath)
        @FileName = fname
        @OldFilePath = fpath
        @NewFilePath = nfpath
    end

    #Gives the description of the command and the file path
    def description()
        #out puts what the command is doing and the path it is taking to do it
        puts "Moving file #{FileName} from #{OldFilePath} to: #{NewFilePath}"
    end

    #execute the Move File class
    def execute()
        File.move(OldFilePath, NewFilePath)
    end

    #Since the undo function is supposed to do the inverse of the command the inverse of creating is deleting 
    #so I delete the file that was created
    def undo()
        File.move(NewFilePath, OldFilePath)
    end
end
