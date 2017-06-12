class HeloController < ApplicationController
    layout 'helo'
    
    def index
        @header = 'layout sample'
        @footer = 'copyright hogehoge'
        if request.post? then
            @title = 'Result'
            if params['check1'] then
                @msg = 'you Checked!!'
            else
                @msg = 'not Checked...'
            end
            @inputValue = params['input1']
            @yourOS = 'Your OS is' + params['select1']
        else
            @title = 'Index'
            @msg = 'checked it...'
        end
    end
end
