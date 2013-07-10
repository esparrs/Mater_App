require 'spec_helper'

describe "Static pages" do

	subject { page }

	shared_examples_for "all static pages" do
		it { should have_content(heading) }
		it { should have_selector('title', :text => title, :visible => false) }
	end

	describe "Landing page" do

		before { visit root_path }

		let(:heading) { "MOM" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
	end

 	describe "Home page" do

 		before { visit home_path }

  		let(:heading) { "Blurb" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
  	end

  	describe "The Mother page" do

  		before { visit mother_path }

  		let(:heading) { "The Mother" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
  	end

  	describe "The Son page" do

  		before { visit son_path }

  		let(:heading) { "The Son" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
  	end

  	describe "Their Relationship page" do

  		before { visit relationship_path }

  		let(:heading) { "Their Relationship" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
  	end

  	describe "Photos page" do

  		before { visit photos_path }

  		let(:heading) { "Photos" }
		let(:title) { "HAPPY 50th BIRTHDAY!" }

		it_should_behave_like "all static pages"
  	end
end
