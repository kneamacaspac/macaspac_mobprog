# macaspac_mobprog

Lab Activity 2A Laboratory Discussion Answer (Discuss how you manage to do the posts and the notification efficiently. Also, how you’ve accomplished the enhancement states the challenges and how you address them):

I managed the posts by using a list of data and 'ListView.builder()' so I could display multiple posts without manually creating each card. I also used a reusable 'NotificationWidget' to display notifications with different information. For the enhancements, I made the AppBar title dynamic using '\_selectedIndex', added more items to the 'BottomNavigationBar', changed the application name, and applied a new color palette.

One of the challenges I encountered was figuring out which Flutter classes, methods, and objects I needed to use since I am still new to Flutter. I had to understand how different widgets work and how they interact with each other. Another challenge was making the AppBar title update correctly when switching pages. I addressed this using '\_selectedIndex' and 'setState()' to keep the title synchronized with the selected screen. I also had some difficulty handling posts with different image conditions, which I solved using conditional statements to display an actual image, a placeholder, or nothing. Overall, these changes made the application more organized, flexible, and easier to maintain.

Lab Activity 1A Laboratory Discussion Answer (Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.):

I integrated the image into 'newsfeed_card.dart' by creating a separate reusable widget called 'PostImage' inside its own file. Instead of directly displaying the image in the newsfeed card, I used the 'PostImage' widget and passed the image path through the 'imagePath' property. To make it dynamic, I added a 'hasImage' condition so that the image will only be displayed if its value is true and an image path is provided. If the post does not have an image, the widget will simply not be displayed. This way, I can use the same NewsfeedCard for posts with or without images without having to create separate layouts for each one.
