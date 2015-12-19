require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   
   test "signed in and can add comment" do
   	user = FactoryGirl.create(:user)
   	sign_in user

   	place = FactoryGirl.create(:place, :user => user)

   	assert_nil Comment.last
   		post :create, :place_id => place.id, :comment => { :message => 'I have had better', :rating => 'one star' 
              }
   	

	 assert_redirected_to place_path(place)
   comment = Comment.last # proves a comment is in the db
	 assert_not_nil comment  

    
    assert_equal 'I have had better', comment.message #check the message passed
    assert_equal 'one star', comment.rating 
    end 

end
