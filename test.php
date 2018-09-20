

        <div>
            @if(count($additional_info) > 0)
                Here are the rows that has Null values: <br/>
                     Please go back and fill up the values of
                     @if($additional_info->EC_name == null)
                         EC_name
                     @endif
                     @if($additional_info->EC_relationship== null)
                         EC_relationship
                     @endif
                     @if($additional_info->EC_address== null)
                         EC_address
                     @endif
                     // and so on. There is a shorter way but I'm not in my laptop right now. But this should work fine

            @else
                 {{ $id }} has no Null data found
            @endif
        </div>
    <!-- @if(!empty($additional_info)) -->
