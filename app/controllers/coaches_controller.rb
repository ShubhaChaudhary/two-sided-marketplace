class CoachesController < ApplicationController

  # SEEDED DATA TO BE REPLACED WITH THOSE FROM DATABASE  
  COACHES_TABLE =[{coach: {  user_name: 'John',  name: 'John Doe', 
          email: 'johndoe@example.com', image: 'john.png', description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa! Ab, enim!.Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa', expertise: 'Soccer', city: 'Brisbane'}}, 
      {coach: {  user_name: 'Mary',  name: 'Mary Boiyo', 
          email: 'maryboiyo@example.com', image: 'mary.png', description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa! Ab, enim!.Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa', expertise: 'Tenis', city: 'Brisbane'}},
      {coach: {  user_name: 'Ahmed',  name: 'Ahmed Rasul', 
          email: 'Ahmedrasulo@example.com', image: 'ahmed.png', description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa! Ab, enim!.Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa', expertise: 'Gym', city: 'Melbourne'}},
      {coach: {  user_name: 'Sara',  name: 'Sarah Komeo', 
          email: 'sarahkomeo@example.com', image: 'sarah.png', description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa! Ab, enim!.Voluptates ut nisi animi neque perspiciatis ipsa aspernatur repudiandae similique laboriosam? Molestias recusandae eligendi quasi esse odit! Totam, eligendi culpa', expertise: 'Gym', city: 'Perth'}}
  ]

  def index
    # This data is to be replaced with data from Coaches Table
    @coach_count = 0
    @coaches = COACHES_TABLE    
  end

  def show
    # This data is to be replaced with data from Coaches Table
    @coach = COACHES_TABLE[params[:id].to_i]
  end
  

end