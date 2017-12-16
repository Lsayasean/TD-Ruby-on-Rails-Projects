# README

**About**: A most basic rails app. Creates a database for storing information about a person and displays the information on a page with a 3D sketchfab model to represent gender. 

**Note**: Not a lot of fancy stuff going on. Longwinded for clarity.

**To-do**: Add comments for clarity.

## Planning

### Models
	Person
		name: string
		bio: text
		age: integer
		gender: string
		height: integer
		fab: string

### Controllers
	people
		index
		edit
		show
		update
		destroy
        
## Model Field Type List:
integer
primary_key
decimal
float
boolean
binary
string
text
date
time
datetime
timestamp

## Console Setup Code:
rails new The_People
cd The_People
rails g model Person name:string bio:text age:integer gender:string height:decimal
rails g controller people
rake db:migrate
brackets .
rails c
Person.connection

```
tom = Person.new(:name=>’Tom’, :bio=>’Tom is cool’, :age=>’24’, :height=>’6.4’, :gender=>’male’)

tom.save

sara = Person.new(:name=>“Sara”, :bio=>”Sara is cool too”, :age=>”19”, :height=>“5.0”, :gender=>”female”)

sara.save
```

## Then...

1. Add bootstrap saas gem
2. bundle install

## Routes

```
root "people#index"

resources :people
```

## people_controller.rb

```
class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new  
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @person = Person.find(params[:id])
  end
  
  def edit
    @person = Person.find(params[:id])
  end
  
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      #flash[:alert] = "You did it"
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @person = Person.find(params[:id])
    if @person.delete
      redirect_to root_path
    else
      flash[:error] = "Failed to delete this product!"
      render :destroy
    end
  end
  
  private
    def person_params
      params.require(:person).permit(:name, :bio, :age, :gender, :height)
    end
end
```

## index.html.erb
```
<div class="container">
  <h1>People</h1>
  
  <% @people.each do |p|%>
    <div style="width:100%">
      <b><p><%=p.name%></p></b>
      <u><%= link_to "Show", p%></u>
      <u><%= link_to "Edit", edit_person_path(p)%></u>
      <u><%= link_to 'Delete',  { action: :destroy, id: p.id }, method: :delete, data: { confirm: 'Are you sure?' } %></u>
    </div><br>
  <%end%>
  <%= link_to "Create New Person", new_person_path(p), class: "btn btn-primary"%>
</div>
```

## edit.html.erb

```
<br><br>

<div class="container">
<u><%= link_to "Back", root_path%></u>
</div><br>

<div class="container w3-card">
  <%= form_for(@person) do |f|%>
    <h1>Edit: <%= @person.name%></h1>
    <%= f.label :name%>
    <%= f.text_field :name, class: "form-control"%>

    <%= f.label :age%>
    <%= f.text_field :age, class: "form-control"%>

    <%= f.label :height%>
    <%= f.text_field :height, class: "form-control"%>

    <%= f.label :gender%>
    <%= f.select :gender, options_for_select(["male","female"]), {}, class: "form-control" %>

    <%= f.label :bio%>
    <%= f.text_area :bio, class: "form-control"%><br>

    <%= f.submit 'Save Changes', class: "btn btn-primary"%>
<%end%>
  
  <% if @person.gender == "male"%>
  <!--SHOW MALE-->
  <%= render 'fabs/male'%>
  <% elsif @person.gender == "female"%>
  <!--SHOW FEMALE-->
  <%= render 'fabs/female'%>
  <%else%>
  <%=render 'show'%>
  <%end%>
</div>
```

## new.html.erb

```
<br><br>

<div class="container">
<u><%= link_to "Back", root_path%></u>
</div><br>

<div class="container w3-card">
  <%= form_for(@person) do |f|%>
    <h1>New: <%= @person.name%></h1>
    <%= f.label :name%>
    <%= f.text_field :name, class: "form-control"%>

    <%= f.label :age%>
    <%= f.text_field :age, class: "form-control"%>

    <%= f.label :height%>
    <%= f.text_field :height, class: "form-control"%>

    <%= f.label :gender%>
    <%= f.select :gender, options_for_select(["male","female"]), {}, class: "form-control" %>

    <%= f.label :bio%>
    <%= f.text_area :bio, class: "form-control"%><br>

    <%= f.submit 'Create', class: "btn btn-primary"%>
<%end%>
</div>
```

## show.html.erb

```
<br><br>

<div class="container">
<u><%= link_to "Back", root_path%></u>
</div><br>

<div class="container w3-card">
  <h1><%=@person.name%></h1>
  <p>Age: <%=@person.age%></p>
  <p>Height: <%=@person.height%></p>
  <p>Gender: <%=@person.gender%></p>
  <p>Bio: <%=@person.bio%></p>
  <p>Created: <%=@person.created_at%></p>
  <p>Object: <%=@person%></p>
  
  <% if @person.gender == "male"%>
  <!--SHOW MALE-->
  <%= render 'fabs/male'%>
  <% elsif @person.gender == "female"%>
  <!--SHOW FEMALE-->
  <%= render 'fabs/female'%>
  <%else%>
  <%=render 'show'%>
  <%end%>
</div>
```

**fabs/_female.html.erb & fabs/_male.html.erb**
These are just embeds from sckethfab.com

## NOTES

To add attributes to a model:

```
rails generate migration add_columnname_to_tablename columnname:datatype
For example:

rails generate migration add_password_to_users password:string
```

## Design

![Design](https://github.com/TutorialDoctor/TD-Ruby-on-Rails-Projects/blob/master/Images/people_design.png?raw=true)

## Preview
![Preview](https://github.com/TutorialDoctor/TD-Ruby-on-Rails-Projects/blob/master/Images/people_preview.png?raw=true)
