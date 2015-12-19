FactoryGirl.define do
	factory :user do
		sequence :email do |n|
		"yolohansolo#{n}@ishotfirst.com"
	end
		password "rebelscum"
		password_confirmation "rebelscum"
	end

	factory :place do 
		sequence :name do |n|
		 "Chalmun's Cantina #{n}"
		end

		address "7 I want to see it now Street, Boston, MA"
		description "The music is great"
		latitude(42.3631519)
		longitude(-71.056098)
		association :user

	end

end