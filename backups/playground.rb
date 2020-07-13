rails d migration create_Users

- - -

# from home page

<div align="center">
<%= form_for @attendee do |f| %>
<%= f.label :name, 'Name' %>
<br><%= f.text_field :name %><br>
<br><%= f.submit "Let's Go!", class: "signup_button" %>
<% end %>
</div>

- - -


<!-- <% unless @plans.where(attendee_id: Attendee.last.id).exists? %>
    <%= link_to "Plan to be here", plans_path(:plan => {attendee_id: Attendee.last.id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :post, class: "selected_fill" %>
<% end %> -->
    
    
    <!-- if attendee has a plan at this show at this location -->
    <% if @plans.where(attendee_id: Attendee.last.id).exists? %>
        <!-- show nothing -->
        <%= "show nothing" %>
    <!-- if attendee has a plan at this show at another location -->
    <% elsif @show.plans.where(attendee_id: Attendee.last.id).exists? %>
        <%= link_to "Plan to be here", plans_path(:plan => {attendee_id: Attendee.last.id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :put, class: "selected_fill" %>
    <!-- if attendee does not have a plan at this show -->
    <% else %>
        <%= link_to "Plan to be here", plans_path(:plan => {attendee_id: Attendee.last.id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :post, class: "selected_fill" %>
    <% end %>

    plan: @show.plans.find_by(attendee_id: Attendee.last.id), id: @show.plans.find_by(attendee_id: Attendee.last.id).id


        <!-- if attendee has a plan at this show at this location -->
    <% if @plans.where(attendee_id: Attendee.last.id).exists? %>
        <!-- show nothing -->
        <%= "show nothing" %>
    <!-- if attendee has a plan at this show at another location -->
    <% elsif @show.plans.where(attendee_id: Attendee.last.id).exists? %>
        <%= link_to "Plan to be here", plan_path({attendee_id: Attendee.last.id, plan: @show.plans.find_by(attendee_id: Attendee.last.id), id: @show.plans.find_by(attendee_id: Attendee.last.id).id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :put, class: "selected_fill" %>
    <!-- if attendee does not have a plan at this show -->
    <% else %>
        <%= link_to "Plan to be here", plans_path(:plan => {attendee_id: Attendee.last.id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :post, class: "selected_fill" %>
    <% end %>



    - - -

        <% unless @plans.where(attendee_id: Attendee.last.id).exists? %>

        <% else %>
        <%= link_to "Plan to be here", plans_path(:plan => {attendee_id: Attendee.last.id, show_id: @show.id, location_id: Location.find(params[:location_id])}), method: :post, class: "selected_fill" %>