var wx_range=[5,10,25,50,100,150];
var wx_index=3;

setlistener("/sim/signals/fdm-initialized", func {
    setprop("instrumentation/nd/range",wx_range[wx_index]);
   # print("Flight Director ...Check");
    settimer(update_fd, 30);
});


var set_range = func(dir){
    wx_index+=dir;
    if(wx_index>5)wx_index=5;
    if(wx_index<0)wx_index=0;
    setprop("instrumentation/nd/range",wx_range[wx_index]);
}


