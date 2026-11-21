# macaspac_mobprog

Laboratory Discussion Answer (Discuss how you integrate the Image to the newsfeed_card.dart and make it dynamic whether it has image or not.):

I integrated the image into 'newsfeed_card.dart' by creating a separate reusable widget called 'PostImage' inside its own file. Instead of directly displaying the image in the newsfeed card, I used the 'PostImage' widget and passed the image path through the 'imagePath' property. To make it dynamic, I added a 'hasImage' condition so that the image will only be displayed if its value is true and an image path is provided. If the post does not have an image, the widget will simply not be displayed. This way, I can use the same NewsfeedCard for posts with or without images without having to create separate layouts for each one.
