
Please make sure you have the correct access rights
and the repository exists.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ ^C
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ cat ~/.ssh/id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGMuDas2d2ntbQNIjVshCCzd6oLMvk1Etfv+3Ak5KCPS potthuruvenkataumeshchandra@gmail.com
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ ssh -T git@github.com
Enter passphrase for key '/home/ubuntu/.ssh/id_ed25519': 
Hi UmeshChandra2001! You've successfully authenticated, but GitHub does not provide shell access.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ git push -u origin main
Enter passphrase for key '/home/ubuntu/.ssh/id_ed25519': 
To github.com:UmeshChandra2001/DockerP1.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'github.com:UmeshChandra2001/DockerP1.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ git remote set-url origin git@github.com:UmeshChandra2001/DockerP1.git
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ git push -u origin main
Enter passphrase for key '/home/ubuntu/.ssh/id_ed25519': 
To github.com:UmeshChandra2001/DockerP1.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'github.com:UmeshChandra2001/DockerP1.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ git pull origin main --rebase
Enter passphrase for key '/home/ubuntu/.ssh/id_ed25519': 
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 906 bytes | 906.00 KiB/s, done.
From github.com:UmeshChandra2001/DockerP1
 * branch            main       -> FETCH_HEAD
 * [new branch]      main       -> origin/main
Successfully rebased and updated refs/heads/main.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ git push -u origin main
Enter passphrase for key '/home/ubuntu/.ssh/id_ed25519': 
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 2 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (14/14), 2.24 KiB | 2.24 MiB/s, done.
Total 14 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:UmeshChandra2001/DockerP1.git
   ee2d8a6..1a861d8  main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
ubuntu@ip-172-31-16-42:~/TuteDude-Assignments/DockerP1$ 
