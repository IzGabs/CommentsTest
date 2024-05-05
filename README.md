# dev_test_1

Flutter version 3.16.5


- Create a deeply nested hierarchy of comments (Title and Details). It should have the following features:
    - A top level list of comments (Title and details)
    - Clicking on the comment takes you to a page for that comment which has:
a breadcrumb trail for the parents you clicked through to arrive at that comment
Title and details of the comment
a list of sub-comments.
    - Build a UI that can go down an infinite number of levels down the comment tree

- Have a way to add comments to any level


IMPORTANT: 

I left some comments in memory to be used. I believe that some improvements can be done, like dependency injection using a package like GetIt or similiar. 

All breadcrumbs and navigation are done. 
I used BLoC to do the State Management.

I couldn't come up with a solution to the nested comments and adding a new item. I do believe it can be achieved by using document references but I don't know if it's the best approach.

I'd like to thank bradley for the opportunity. 


