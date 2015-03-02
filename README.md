# FlashFunctionFinder


This is a tool to help web developers discover the undercover functions that are exposed from a swf. Essentially just copy and paste the bin directly into your browser console window and it will try to find word matches that are actual functions.

### Install
 Copy and paste the [hack.js](https://raw.githubusercontent.com/jasongornall/FlashFunctionFinder/master/bin/hack.js) straight into your chrome console and it should automatically start finding swf functions on the page.
It will automatically execute and start the process of uncovering the functions.

### Custom run
  You can always specify a manual location for the hack attempt by modifying the below query:
   ```
   jQuery('object[type="application/x-shockwave-flash"]').hack()
 ```


### Sample output from [twitch.tv](http://www.twitch.tv/)


![Alt text](http://content.screencast.com/users/jgornall/folders/Jing/media/1845ccd8-d480-4b21-9ab4-81965f3175e8/00001410.png "Optional title")

### Just for fun let's compare this against the offical api... for [twitch.tv](http://www.twitch.tv/)
![](http://content.screencast.com/users/jgornall/folders/Jing/media/b56497a7-db66-498c-bc0e-a07b5e7c146c/00001411.png)
Looks like quite a few undocumented methods there... feel free to ping me with any questions/comments!

Happy Coding :)
