with Alire.Index;

with Alr.OS;

package Alr.Checkout is
   
   type Policies is (Overwrite, Skip, Error);
   --  What to do when checking out to something that already exists
   
   procedure Working_Copy (R              : Alire.Index.Release; 
                           Deps           : Alire.Index.Instance;
                           Parent_Folder  : String; 
                           Generate_Files : Boolean := True;
                           If_Conflict    : Policies := Skip);
   --  A working copy might not have alr and gpr files, that will be generated if needed

   procedure To_Folder (Projects : Alire.Index.Instance; 
                        Parent   : String := OS.Projects_Folder;
                        But      : Alire.Project_Name := "");
   --  Retrieves all releases into a folder, typically the main cache
   --  One project in the solution (typically the root project itself) can be ignored

end Alr.Checkout;