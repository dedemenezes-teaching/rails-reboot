class FootballFieldsController < ApplicationController
  def index
    @football_fields = FootballField.all
  end
end
