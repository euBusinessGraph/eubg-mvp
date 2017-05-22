class SearchController < ApplicationController
    
    def new
        newSearch = Search.new({company: params[:search], country: params[:jurisdictionFilter]})   
        newSearch.execute_search
        @resultSet = newSearch.searchResult.paginate(:page => params[:page], :per_page => 30)
        
        
        #newResultSet = newSearch.searchResult.paginate(:page => params[:page], :per_page => 30)
        
        #if previous_search? 
        #    @resultSet = @previousSearch.searchResult.paginate(:page => params[:page], :per_page => 30)
        #else
        #    @resultSet = newResultSet
        #    @previousSearch = newSearch
        #end
    end
    
    #def previous_search?
    #    !@previousSearch.nil?
    #end
    
    def result
    end
    
end
