Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

PS C:\Users\CS_19\Desktop> cd project
PS C:\Users\CS_19\Desktop\project> ls


    Directory: C:\Users\CS_19\Desktop\project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        08-10-2026     17:26              0 names.txt


PS C:\Users\CS_19\Desktop\project> @"
>> ai
>> ml
>> "@ | Add-Content -path names.txt
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   names.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

PS C:\Users\CS_19\Desktop\project> git add .
warning: in the working copy of 'names.txt', LF will be replaced by CRLF the next time Git touches it
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   names.txt

PS C:\Users\CS_19\Desktop\project> git commit -m "commit"
[master eb4806b] commit
 1 file changed, 2 insertions(+), 2 deletions(-)
PS C:\Users\CS_19\Desktop\project> Add-Content -path names.txt -value "ot"
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git add .
warning: in the working copy of 'names.txt', LF will be replaced by CRLF the next time Git touches it
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   names.txt

PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> git restore --staged names.txt
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> git commit -m "commit"
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git add .
warning: in the working copy of 'names.txt', LF will be replaced by CRLF the next time Git touches it
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   names.txt

PS C:\Users\CS_19\Desktop\project> git commit
error: there was a problem with the editor 'vim'
Please supply the message using either -m or -F option.
PS C:\Users\CS_19\Desktop\project> -m
-m : The term '-m' is not recognized as the name of a cmdlet, function, script file, or operable
program. Check the spelling of the name, or if a path was included, verify that the path is correct
and try again.
At line:1 char:1
+ -m
+ ~~
    + CategoryInfo          : ObjectNotFound: (-m:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Users\CS_19\Desktop\project> git commit -m "commit"
[master 744f79d] commit
 1 file changed, 1 insertion(+)
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> Add-Content -path names.txt -value "sp"
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
sp
PS C:\Users\CS_19\Desktop\project> git restore --staged names.txt
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
sp
PS C:\Users\CS_19\Desktop\project> git restore names.txt
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project> Add-Content -path names.txt -value "math"
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
math
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git restore --stagged nmaes.txt
error: unknown option `stagged'
usage: git restore [<options>] [--source=<branch>] <file>...

    -s, --[no-]source <tree-ish>
                          which tree-ish to checkout from
    -S, --[no-]staged     restore the index
    -W, --[no-]worktree   restore the working tree (default)
    --[no-]ignore-unmerged
                          ignore unmerged entries
    --[no-]overlay        use overlay mode
    -q, --[no-]quiet      suppress progress reporting
    --[no-]recurse-submodules[=<checkout>]
                          control recursive updating of submodules
    --[no-]progress       force progress reporting
    -m, --[no-]merge      perform a 3-way merge with the new branch
    --[no-]conflict <style>
                          conflict style (merge, diff3, or zdiff3)
    -2, --ours            checkout our version for unmerged files
    -3, --theirs          checkout their version for unmerged files
    -p, --[no-]patch      select hunks interactively
    -U, --unified <n>     generate diffs with <n> lines context
    --inter-hunk-context <n>
                          show context between diff hunks up to the specified number of lines
    --[no-]ignore-skip-worktree-bits
                          do not limit pathspecs to sparse entries only
    --[no-]pathspec-from-file <file>
                          read pathspec from file
    --[no-]pathspec-file-nul
                          with --pathspec-from-file, pathspec elements are separated with NUL character

PS C:\Users\CS_19\Desktop\project> git restore names.txt
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project> Add_Content -path names.txt -value "math"
Add_Content : The term 'Add_Content' is not recognized as the name of a cmdlet, function, script
file, or operable program. Check the spelling of the name, or if a path was included, verify that
the path is correct and try again.
At line:1 char:1
+ Add_Content -path names.txt -value "math"
+ ~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (Add_Content:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Users\CS_19\Desktop\project> Add-content -path names.txt -value "math"
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
math
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git restore --staged names.txt
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
math
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   names.txt

PS C:\Users\CS_19\Desktop\project> git restore --staged names.txt
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   names.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git restore names.txt
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project> cat names.txt
ai
ml
ot
PS C:\Users\CS_19\Desktop\project>  Add-content -path names.txt -value "math"
PS C:\Users\CS_19\Desktop\project> git add.
git: 'add.' is not a git command. See 'git --help'.

The most similar command is
        add
PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git commit
error: there was a problem with the editor 'vim'
Please supply the message using either -m or -F option.
PS C:\Users\CS_19\Desktop\project> git commit -m "commit3"
[master 8c6c4bd] commit3
 1 file changed, 1 insertion(+)
PS C:\Users\CS_19\Desktop\project> git log
commit 8c6c4bd96501b57cec6d7b19b273b2f9a88384e5 (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 18:07:27 2026 +0530

    commit3

commit 744f79d60eefcd626d1a7783f6cfeb6c8da1dec6
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 17:41:59 2026 +0530

    commit

commit eb4806b44e6d91e9916c3b5740e77ea86a9e2f8f
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 17:29:57 2026 +0530

    commit

commit 97f8bac4a0e13f031e78026509289e751e11e83d
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:48:35 2026 +0530

    added some names to names.txt

commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git rm names.txt
rm 'names.txt'
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        deleted:    names.txt

PS C:\Users\CS_19\Desktop\project> git log
commit 8c6c4bd96501b57cec6d7b19b273b2f9a88384e5 (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 18:07:27 2026 +0530

    commit3

commit 744f79d60eefcd626d1a7783f6cfeb6c8da1dec6
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 17:41:59 2026 +0530

    commit

commit eb4806b44e6d91e9916c3b5740e77ea86a9e2f8f
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 17:29:57 2026 +0530

    commit

commit 97f8bac4a0e13f031e78026509289e751e11e83d
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:48:35 2026 +0530

    added some names to names.txt

commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> new-item -path surnmae.txt -item-type file
New-Item : A parameter cannot be found that matches parameter name 'item-type'.
At line:1 char:28
+ new-item -path surnmae.txt -item-type file
+                            ~~~~~~~~~~
    + CategoryInfo          : InvalidArgument: (:) [New-Item], ParameterBindingException
    + FullyQualifiedErrorId : NamedParameterNotFound,Microsoft.PowerShell.Commands.NewItemCommand

PS C:\Users\CS_19\Desktop\project> new-item -path surname.txt -itemType file


    Directory: C:\Users\CS_19\Desktop\project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        08-10-2026     18:26              0 surname.txt


PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        deleted:    names.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        surname.txt

PS C:\Users\CS_19\Desktop\project> git reset 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e
Unstaged changes after reset:
D       names.txt
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    names.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        surname.txt

no changes added to commit (use "git add" and/or "git commit -a")
PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    names.txt -> surname.txt

PS C:\Users\CS_19\Desktop\project> Add-Content -path surname.txt -value "k"
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    names.txt -> surname.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   surname.txt

PS C:\Users\CS_19\Desktop\project> cat surname.txt
k
PS C:\Users\CS_19\Desktop\project> new-item -path house.txt -itemType file


    Directory: C:\Users\CS_19\Desktop\project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        08-10-2026     18:34              0 house.txt


PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    names.txt -> surname.txt

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   surname.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        house.txt

PS C:\Users\CS_19\Desktop\project> git add.
git: 'add.' is not a git command. See 'git --help'.

The most similar command is
        add
PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    names.txt -> house.txt
        new file:   surname.txt

PS C:\Users\CS_19\Desktop\project> git stash
Saved working directory and index state WIP on master: 18a80a0 names.txt is added
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> cat names.txt
PS C:\Users\CS_19\Desktop\project> cat surname.txt
cat : Cannot find path 'C:\Users\CS_19\Desktop\project\surname.txt' because it does not exist.
At line:1 char:1
+ cat surname.txt
+ ~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Users\CS_19\...ect\surname.txt:String) [Get-Conten
   t], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetContentCommand

PS C:\Users\CS_19\Desktop\project> git stash pop
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   house.txt
        new file:   surname.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    names.txt

Dropped refs/stash@{0} (c2681e4722088acb8e3b2ef8e1848e6c14e9d6d6)
PS C:\Users\CS_19\Desktop\project> cat surname.txt
k
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   house.txt
        new file:   surname.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    names.txt

PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    names.txt -> house.txt
        new file:   surname.txt

PS C:\Users\CS_19\Desktop\project> git statsh
git: 'statsh' is not a git command. See 'git --help'.

The most similar command is
        stash
PS C:\Users\CS_19\Desktop\project> git stash
Saved working directory and index state WIP on master: 18a80a0 names.txt is added
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project> git stash pop
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   house.txt
        new file:   surname.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    names.txt

Dropped refs/stash@{0} (70efa7cbf6a82ffe896c3a80993912f250eea68e)
PS C:\Users\CS_19\Desktop\project> git stash
Saved working directory and index state WIP on master: 18a80a0 names.txt is added
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git stash pop
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   house.txt
        new file:   surname.txt

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        deleted:    names.txt

Dropped refs/stash@{0} (03a4c79014a9572d75893f0623cf673dbab7c5a1)
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git add .
PS C:\Users\CS_19\Desktop\project> git stash
Saved working directory and index state WIP on master: 18a80a0 names.txt is added
PS C:\Users\CS_19\Desktop\project> git stash clear
PS C:\Users\CS_19\Desktop\project> git log
commit 18a80a0ebdff4c8f95e46ec9c55c4327162ece7e (HEAD -> master)
Author: Jahnavi <kummithajahnavi7@gmail.com>
Date:   Thu Oct 8 12:38:30 2026 +0530

    names.txt is added
PS C:\Users\CS_19\Desktop\project> git stash pop
No stash entries found.
PS C:\Users\CS_19\Desktop\project> git status
On branch master
nothing to commit, working tree clean
PS C:\Users\CS_19\Desktop\project>
PS C:\Users\CS_19\Desktop\project> notepad my_commands.ps1
PS C:\Users\CS_19\Desktop\project>