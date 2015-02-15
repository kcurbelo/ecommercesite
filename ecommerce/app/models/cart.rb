class Cart < ActiveRecord::Base
  belongs_to :jacket
  belongs_to :user

  #todo create the relationships of has many and the rake db:migrate
end
