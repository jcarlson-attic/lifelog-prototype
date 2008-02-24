class EntryTypesController < ApplicationController
  
  def index
    @entry_types = EntryType.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_types }
    end
  end
  
  def new
    @entry_type = EntryType.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entry_type }
    end
  end
  
  def create
    @entry_type = EntryType.new(params[:entry_type  ])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entries }
    end
end
end
