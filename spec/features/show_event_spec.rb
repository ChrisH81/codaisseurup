require 'rails_helper'

 describe "Viewing an individual event" do
   let(:user) { create :user }
   let(:event) { create :event, user: user }

   it "shows the event's details" do
     visit event_url(event)


   end
 end

 #  expect(page).to have_text(event.name)
 #  expect(page).to have_text(event.description)
 #  expect(page).to have_text(event.location)
 #  expect(page).to have_integer(event.price)
 #  expect(page).to have_text(event.capacity)
