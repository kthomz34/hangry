require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   
   test "signed in and can add comment" do
   	user = FactoryGirl.create(:user)
   	sign_in user

   	place = FactoryGirl.create(:place)

   	assert_difference 'place.comment.count' do
   		post :create, :place_id => place.id, :comment => { 
                :message => 'I have had better',
                :rating => '1_star' 
              }
   	end

	 assert_redirected_to place_path(place)
	 assert_equal 1, user.comments.count  

    comment = user.comments.first
    assert_equal 'I have had better',
    assert_equal 'one star', comment.rating 
    end 

end
