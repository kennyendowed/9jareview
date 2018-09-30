<script>
  $(function() {
        // Initializes and creates emoji set from sprite sheet
        window.emojiPicker = new EmojiPicker({
            // var appBaseUrl = '{!! url() !!}';
            // var finalUrl = appBaseUrl+'/controller/action';

          emojiable_selector: '[data-emojiable=true]',
          assetsPath: '../../public/lib/img',
          popupButtonClasses: 'fa fa-smile-o'
        });
        // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
        // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
        // It can be called as many times as necessary; previously converted input fields will not be converted again
        window.emojiPicker.discover();
      });
$(document).ready(function() {

    $('select[name="country"]').on('change', function(){
        var countryId = $(this).val();
        if(countryId) {
            $.ajax({
                url: '<?php echo route("subinds");  ?>/'+countryId,
                type:"GET",
                dataType:"json",
                beforeSend: function(){
                    $('#loader').css("visibility", "visible");
                },

                success:function(data) {

                    $('select[name="state"]').empty();

                    $.each(data, function(key, value){

                        $('select[name="state"]').append('<option value="'+ key +'">' + value + '</option>');

                    });
                },
                complete: function(){
                    $('#loader').css("visibility", "hidden");
                }
            });
        } else {
            $('select[name="state"]').empty();
        }

    });

});
</script>
