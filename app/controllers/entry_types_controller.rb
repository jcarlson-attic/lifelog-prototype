class EntryTypesController < ApplicationController
  
  def index
    @entry_types = EntryType.find(:all)
  end
  
end
