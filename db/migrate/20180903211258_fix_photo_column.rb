class FixPhotoColumn < ActiveRecord::Migration[5.2]
  def change
    post = Post.find(1)
    post.update_column(:photo, 'http://www.zapatitoslindos-ortopedica.com/oceanairtourspictures/Spearfishing/slides/Spear%20fishing%20baraccuda%20Manuel%20Antonio.jpg')
    post1 = Post.find(2)
    post1.update_column(:photo, 'http://www.nemodiving.co.za/images/spearo-7.jpg')
    post2 = Post.find(3)
    post2.update_column(:photo, 'http://3.bp.blogspot.com/_oPnVBO5s9-M/TAUZLtJnXxI/AAAAAAAACdE/s3U1_ySlHkc/s1600/Mallabar_Cod.JPG')
    post3 = Post.find(4)
    post3.update_column(:photo, 'https://i.ytimg.com/vi/MxGJ0q8Gy0Y/sddefault.jpg#404_is_fine')
  end
end
