class HomeController < ApplicationController
  def index
    render json: <<-EOF


    Welcome to Pure Forest Blackjack!'
                               __________
                    __________/VVVVVVVVVV\\
                   /VVVVVVVVVVVVVVVVVVVVVV|
                 /VVVVVVVVVVVVVVVVVVVVVVV/
               /VVVVVVVVVVVVVVVVVVVVVVVV/
              |VVVV^^^^^^^^^^^^         |
             |                    vvvvvv\\
             |     vvvvvvvVVVVVVVVVVVVVV/
             |/VVVVVVVVVVVVVVVVVVVVVVVVV|
             |VVVVVVV^^^^^^^^^^         |
              |V/                        \\
              |             vvvvvvvvvvvvv|
               \\  /VVVVVVVVVVVVVVVVVVVVVV\\
                \\/VVVVVVVVVVVVVVVVVVVVVVVV\\____
                 |VVVVVVVV^^^^^^^^^^___________)
             |\\__|/ _____ //--------   \\\\xx/
             | xx\\ /%%%%///   __     __  \\\\ \\
             \\_xxx %%%%  /   /  \\   /  \\    |
             / \\x%%%%       ((0) ) ((0) )   |
            / #/|%%%%        \\__/   \\__/     \\__  ______-------
            \\#/ |%%%%             @@            \\/
              _/%%%%                             |_____
     ________/|%%%%                              |    -----___
-----         |%%%%     \\___                  __/
           ___/\\%%%%    /  --________________//
     __----     \\%%%%                     ___/
    /             \\%%%%                   _/
                     \\%%%%              _/
                       \\%%%%           /
                          \\%%         |
                           |%%        |


EOF
  end
end
