# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
These are code to edit user repo using check_boxes
<% form_tag edit_user_repo_path do %>
<% for @user_repo in @user_repos %>
  <% @user_repos.each do |ur| %>
  <tr>
   <td><%= check_box_tag "user_repo_ids[#{ur.id}]", ur.id %></td>
   <td><%= ur.recipes %></td>
   <td><%= ur.videos %></td>
   <td><%= ur.events %></td>
 <% end  %>
 <td><%= link_to "Edit", edit_user_repo_path(@user_repo) %></td>
 <td><%= link_to "Delete", user_repo_path(@user_repo), :confirm => "Are you sure?", :method => :delete %></td>
</tr>
<% end %>
<p><%= submit_tag "Edit Checked" %></p>
<% end %>
<h2> New User Repo </h2>
<br>
<%= form_for @user_repo do |f| %>
<br>
<%= f.label :recipes %>
<%= f.check_box :recipes, {}, true, false %>
<br>
<%= f.label :exercise_videos %>
<%= f.check_box :exercise_videos, {}, true, false %>
<br>
<%= f.label :relaxation %>
<%= f.check_box :relaxation, {}, true, false %>
<br>
<%= f.label :events %>
<%= f.check_box :events, {}, true, false %>
<br>

<%= f.submit %>
<% end %>