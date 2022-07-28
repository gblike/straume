import Straume

def main : IO Unit := do
  IO.println "STREAM DEMO 3"
  let (_, zoink) ←
    IO.FS.withFile (System.mkFilePath [".", "Straume.lean"])
                   (.read)
                   (fun handle => Straume.MonadEmit.askFrom (pure handle) 3555)
  IO.println s!"{String.fromUTF8Unchecked zoink}"
