tracking-changes-reflection.md


-- How does tracking and adding changes make developers' lives easier?
Tracking reduces the risk of one massive program getting bogged down in errors and repeats.
Adding changes via Git and GitHub keeps everything tight and tidy.
What is a commit?
A commit is the action of saving a version to git (and most often with the purpose of sending to GitHub). A commit should come with a commit message.

-- What are the best practices for commit messages?
Commit message should be short, descriptive, informative, in the present tense

-- What does the HEAD^ argument mean?
HEAD^ is the last commit preceding the current commit

-- What are the 3 stages of a git change and how do you move a file from one stage to the other?
git status -- for checking the latest status of an item
git add -- for staging the item in preparation for a commit
git commit -m "Message" -- saving the item

-- Write a handy cheatsheet of the commands you need to commit your changes?
git status
git add
git status
git commit -m "Message"


-- What is a pull request and how do you create and merge one?
A pull request allows to pull a version and compare it with another branch/version before merging it.
The pull request must be done from the non-master branch. Once the version has been merged to the master, a pull request can be completed.

-- Why are pull requests preferred when working with teams?
In a team setting, pull requests help centralize team members' input whie keeping track between various branches and the repository's master branch.

--Go through the git workflow you just established and add your reflection to the file.
Repetition, practice, failure and more practice seem to be the only way to acquire any familiarity with Git and GitHub. I've come to appreciate the importance of paying attention to every detail -- WHERE am I? What am I doing?

Add your changes, commit them, and make a pull request to your repository.


Merge the pull request into your master branch

Submit the link to your reflection file. It should be located at:

https://github.com/[YOUR-USERNAME]/phase-0/blob/master/week-1/tracking-changes-reflection.md