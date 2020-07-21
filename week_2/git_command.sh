~$ cd scripts
~/scripts$ git log
commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py
~/scripts$ cd
~$ cd scripts
~/scripts$ nan0 all_checks.py
bash: nan0: command not found
~/scripts$ nano all_checks.py
 with 1 on error"mmit -a -m "Call check_reboot from main, exit 
[master 4147722] Call check_reboot from main, exit with 1 on error
 1 file changed, 4 insertions(+), 1 deletion(-)
~/scripts$ git log
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py
~$ cd scripts
~/scripts$ git log -p
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> maste
r)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
-  pass
+  if check_reboot():
+    print("Pending Reboot.")
+    sys.exit(1)
 
 main()
 

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

diff --git a/all_checks.py b/all_checks.py
index 474560f..ed0624f 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,5 +1,10 @@
 #!/usr/bin/env python3
 
+import os
+
+def check_reboot():
+  """Returns True if the computer has a pending reboot"""
+  return os.path.exist("/run/reboot-required")
 def main():
   pass
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> maste
r)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
-  pass
+  if check_reboot():
+    print("Pending Reboot.")
+    sys.exit(1)
 
 main()
 

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

diff --git a/all_checks.py b/all_checks.py
index 474560f..ed0624f 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,5 +1,10 @@
 #!/usr/bin/env python3
 
+import os
+
+def check_reboot():
+  """Returns True if the computer has a pending reboot"""
+  return os.path.exist("/run/reboot-required")
 def main():
   pass
 

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py

diff --git a/all_checks.py b/all_checks.py
new file mode 100755
index 0000000..474560f
--- /dev/null
+++ b/all_checks.py
@@ -0,0 +1,7 @@
+#!/usr/bin/env python3
+
+def main():
+  pass
+
+main()
+

~/scripts$ git log
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:37:36 2020 +0000

    created empy all_checks.py
~/scripts$ git show
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

diff --git a/all_checks.py b/all_checks.py
index ed0624f..216759a 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -1,12 +1,15 @@
 #!/usr/bin/env python3
 
 import os
+import sys
 
 def check_reboot():
   """Returns True if the computer has a pending reboot"""
   return os.path.exist("/run/reboot-required")
 def main():
~/scripts$ git log --stat
commit 414772236c3f8c15c8afd630487d0235d09aa19e (HEAD -> master)
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Tue Jul 21 09:03:17 2020 +0000

    Call check_reboot from main, exit with 1 on error

 all_checks.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

commit afe1c0ded806d17154cb165ebc03b6552dd4b2ca
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
Date:   Mon Jul 20 13:41:16 2020 +0000

    Add a check_reboot function

 all_checks.py | 5 +++++
 1 file changed, 5 insertions(+)

commit 51a99b37cae287695c37446c4adccde48f250e14
Author: dibyanshushekhardey <dibyanshushekhardey@gmail.com>
~/scripts$ nano all_checks.py
~/scripts$ git diff
diff --git a/all_checks.py b/all_checks.py
index 216759a..5f78923 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,6 +10,8 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
+  print("Everything OK.")
+  sys.exit(0)
 
 main()
 
~/scripts$ git add -p
diff --git a/all_checks.py b/all_checks.py
index 216759a..5f78923 100755
--- a/all_checks.py
+++ b/all_checks.py
@@ -10,6 +10,8 @@ def main():
   if check_reboot():
     print("Pending Reboot.")
     sys.exit(1)
+  print("Everything OK.")
+  sys.exit(0)
 
 main()
 
Stage this hunk [y,n,q,a,d,e,?]? y

~/scripts$ git commit -m "Add a message when everything is ok"[master 36bd458] Add a message when everything is ok
 1 file changed, 2 insertions(+)
~/scripts$ git status
On branch master
nothing to commit, working tree clean
~/scripts$ cd
~$ cd checks
~/checks$ ls -l
total 2
-rwxr-xr-x 1 user user 441 Jul 20 13:26 disk_usage.py
-rwxr-xr-x 1 user user  46 Jul 20 13:07 hello_world.py
~/checks$ git rm process.py
fatal: pathspec 'process.py' did not match any files
~/checks$ git rm hello_world.py
rm 'hello_world.py'
~/checks$ ls -l
total 1
-rwxr-xr-x 1 user user 441 Jul 20 13:26 disk_usage.py
~/checks$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        deleted:    hello_world.py

~/checks$ git commit -m "deleted unneeded hello_world file"
[master 031f97b] deleted unneeded hello_world file
 1 file changed, 4 deletions(-)
 delete mode 100755 hello_world.py
~/checks$ git mv disk_usage.py check_free_space.py
~/checks$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        renamed:    disk_usage.py -> check_free_space.py

~/checks$ git commit -m "New name to disk_usage.py"
[master f75bb66] New name to disk_usage.py
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename disk_usage.py => check_free_space.py (100%)
~/checks$ echo .DS_STORE > .gitignore
~/checks$ ls -la
total 6
drwxr-xr-x  3 user user   5 Jul 21 09:37 .
drwxr-xr-x 10 user user  19 Jul 21 09:24 ..
drwxr-xr-x  8 user user  14 Jul 21 09:35 .git
-rw-r--r--  1 user user  10 Jul 21 09:37 .gitignore
-rwxr-xr-x  1 user user 441 Jul 20 13:26 check_free_space.py
~/checks$ gitadd .gitignore
bash: gitadd: command not found
~/checks$ git add .gitignore
The following paths are ignored by one of your .gitignore files:
.gitignore
Use -f if you really want to add them.
~/checks$ git add -f .gitignore
~/checks$ git commit -m "Add a gitignore file ignoring .DS_STORE"
[master 6806090] Add a gitignore file ignoring .DS_STORE
 1 file changed, 1 insertion(+)
 create mode 100644 .gitignore
~/checks$ #all the modified python files will be provided later on
