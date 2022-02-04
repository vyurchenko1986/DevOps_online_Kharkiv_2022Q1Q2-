# DevOps_online_Kharkiv_2022Q1Q2 [EPAM University Programs DevOps education program]

#### Module 1 DevOps Introduction TASK 1.1:

##### 1. Try training https://learngitbranching.js.org/ [OK]

##### 2. Install GIT on your workstation [OK]

##### 3. Setup git: change your global configs (add name and email, setup core text editor):
```
git config --global user.name "Valery Yurchenko"
git config --global user.email "vyurchenko1986@gmail.com"
```
```
git config --global core.editor code
```
```
git config --list
```
##### 4. Create account on GitHub. [OK]

##### 5. Create new private repo on GitHub. Repo name:DevOps_online_Kharkiv_2022Q1Q2 [OK]

##### 6. You can see example repository structure. [OK]
```
/m1/task1.1/.placeholder
```

##### 7. Clone repo to your workstation.
```
git clone git@github.com:vyurchenko1986/DevOps_online_Kharkiv_2022Q1Q2-.git
cd DevOps_online_Kharkiv_2022Q1Q2-/m1/task1.1/
```

##### 8. Open git console in root directory of your project and make next steps.  [OK]

##### 9. Do all your experiments in folder “task1.1”. [OK]

##### 10. Create empty readme.txt file. [OK]
```
touch readme.txt
```

##### 11. Make init commit. [OK]
```
git status
git add readme.txt
git commit -m "Create empty readme.txt file."
```

##### 12. Create develop branch and checkout on it. [OK]
```
git checkout -b develop
```

##### 13. Create index.html empty file. Commit. [OK]
```
touch index.html
git add index.html
git commit -m "Create index.html empty file."
```

##### 14. Create branch with name “images”. Checkout on it. Add images folder with [OK]
```
git checkout -b images
mkdir images
cd images/
wget https://git-scm.com/images/branching-illustration@2x.png
cd..
git add images/
git commit -m "Create branch with name images. Add images folder with some images inside it."
```

##### 15. Change your index.html. Add images source inside it. Commit. [OK]
```
nano index.html

<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8">
     <title>DevOps_online_Kharkiv_2022Q1Q2</title>
</head>
<body>
    <h1>DevOps_online_Kharkiv_2022Q1Q2</h1>
    <img src="images/branching-illustration@2x.png" width="500px" border="2px">
    <p>EPAM University Programs</p>
</body>
</html>

git status
git add index.html
git commit -m "Change your index.html. Add images source inside it."
```

##### 16. Go back to develop branch. [OK]
```
git checkout develop
```

##### 17. Create branch with name “styles”. Checkout on it. Add styles folder with styles source inside it. Commit. [OK]
```
git checkout -b styles
mkdir css
nano css/style.css
body {
    background: lightyellow;
    front: 18px Arial, sans-serif;
}
h1 {
    color: orange;
}

git status
git add css/
git commit -m "Create branch with name styles. Add styles folder with styles source inside it."
```

##### 18. Change your index.html. Commit. [OK]
```
nano index.html

<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8">
     <title>DevOps_online_Kharkiv_2022Q1Q2</title>
     <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>DevOps_online_Kharkiv_2022Q1Q2</h1>
    <img src="images/branching-illustration@2x.png" width="500px" border="2px">
    <p>EPAM University Programs</p>
</body>
</html>

git status
git add index.html
git commit -m "Change your index.html add link css file"
```

##### 19. Go to develop branch.  [OK] * ===> backup git folder project <===
```
git checkout develop
```

##### 20. Merge two new branches into develop using git merge command. Resolve [OK]
conflict if it appear. Do it in next sequence:

• merge “images” into “develop”

• merge “styles” into “developna”

```
git checkout develop
git merge images
git merge styles

git status
git log --merge
git diff

nano index.html
git add index.html
git commit -m "merged and resolved the conflict in index.html"
```

##### 21. Do not delete any branches! [OK]

##### 22. Merge develop into master. [OK]
```
git checkout main
git merge  develop
```

##### 23. Try to inspect your repository with git log command. Use different options [OK]
with this command (git log --help).
```
git log --pretty=format:'%C(yellow)%h %C(dim green)%cd %C(reset)| %s%d [%an]' --date=format:'%F %R'
```

##### 24. Push all your changes with all your branches to origin (git push origin --all). [OK]
```
git push origin --all
```

##### 25. Execute command “git reflog“ and save it content somewhere (not in repository) with filename “task1.1_GIT.txt”. [OK]
```
git reflog > task1.1_GIT.txt
```

##### 26. Add task1.1_GIT.txt to your local repo in then Push it in GitHub repo. [OK]
```
git status
git add task1.1_GIT.txt
git push origin main
```

##### 27. Make file readme.md in folder task1.1 and describe results of your work with Git. [OK]
```
touch readme.md
nano readme.md
git add readme.md
git commit -m "Make file readme.md in folder task1.1 and describe results of your work with Git"
```

##### 28. Describe in your own words what DevOps is. Try to use not more 50 words. [OK]
Do not use ctrl-C/ctrl-V.

DevOps (англ. Development & Operations — «разработка и эксплуатация») — это методология разработки ПО, задача которой — наладить взаимодействие программистов и сисадминов в компании.

##### 29. Insert your text about DevOps in readme.md. [OK]
