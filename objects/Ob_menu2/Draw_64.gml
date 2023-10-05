//criando o menu

draw_set_font(fnt_ft_menu);


// centralizar o menu na tela
  var gui_largura=display_get_gui_width();
  var gui_altura=display_get_gui_height();
  var l1=gui_largura/2;//largura
  var a1=gui_altura/2;// altura
  var margin = 50;
    
//mouse 
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);



for(var i=0;i<op_max;i++)

{ 
	var y2= a1 + (margin * i);
	var string_w = string_width(opcoes[i]);
   var string_h = string_height(opcoes[i]);
	
	draw_set_halign(fa_center);//centalizar o menu
	draw_set_valign(fa_center);
	
	if(index==i)
    { draw_set_color(c_blue)}
	
	else{
	  draw_set_color(c_green)
	}
	
	

   
   
 // if(point_in_rectangle(m_x,m_y, l1 - string_w/2,y2 - string_h/2,l1 + string_w/2,y2 + string_h/2))
   //{
    //draw_set_color(c_red);
   
   //}
   
   //else
   //{
     //draw_set_color(c_green);
  // /}
  
  draw_text(l1,y2,opcoes[i]);
   
 
   
   
   
}



draw_set_font(-1) // para pegra fonte padrão quando restar



