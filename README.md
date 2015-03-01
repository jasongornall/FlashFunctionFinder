# FlashFunctionFinder


This is a tool to help web developers discover the undercover functions that are exposed from a swf. Essentially just copy and paste the bin directly into your browser console window and it will try to find word matches that are actual functions.

###Install
 copy and paste the bin directory straight into your chrome console and it should automaticall start finding swf functions on the page
 It will automatically execute 
 ```
   jQuery('object[type="application/x-shockwave-flash"]').hack()
 ```
 and start the process of uncovering the functions

###Custom run
  you can always specify a manual locaiton for the hack attempt by modifying the above query
  
  
###Sample output from [twitch.tv](http://www.twitch.tv/)


![Alt text](http://content.screencast.com/users/jgornall/folders/Jing/media/1845ccd8-d480-4b21-9ab4-81965f3175e8/00001410.png "Optional title")

###Just for fun let's compare this against the offical api..###
![](http://content.screencast.com/users/jgornall/folders/Jing/media/b56497a7-db66-498c-bc0e-a07b5e7c146c/00001411.png)
looks like quite a few undocumented methods there... feel free to ping me with any questions/comments!

happy coding :)
