use Tk;
use Hugs;

 $mw = MainWindow->new;
 $hello = $mw->Button(-text , 'Hello, world',
       '-command' , sub {print STDOUT "Hello, world\n"; });
 $greet = $mw->Button(-text , 'goodbye',
       '-command' , sub {print STDOUT "good bye\n"; exit;});
 $hello->pack;
 $greet->pack(-side , "right");
 MainLoop; 


