# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is how we track and manage changes to projects. It is useful because it allows us to track each change to the code, and to roll back to previous versions if needed to eliminate an error. It also allows many people to contribute to a project in a way that is easy to follow and that reduces errors in the final version.

* What is a branch and why would you use one?

A branch is essentially a copy of the master code that can be edited to ensure that the changes will work without having to test them on the origional code. A branch is basically a rough draft where you can make edits to the final product and test them to make sure they are working as intended before adding them to the final code.
chicken
* What is a commit? What makes a good commit message?

A commit is when you add a new piece of code to the branch you are working on. It acts as a save point that you can roll back to in the future. A good commit message is short and clearly says what that commit is adding to the code. That way another dev can read through the timeline of commit messages and easily follow how the final code was built, piece by piece.

* What is a merge conflict?

A merge conflict is when two different branches are being merged but at least one part of the code is conflicting. If the two merging branches changed the same line in two different ways Git may not know which change to implement, which causes the conflict.