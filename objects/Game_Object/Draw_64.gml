/// @description COMMANDS
var _y = display_get_gui_height();
draw_set_halign(fa_left);
draw_text(20, 20, "Soma de vetores!!! Adicione pontos na tela para gerar vetores e ver o vetor resultante");
draw_set_color(c_red);
draw_text(20, 40, "O vetor resultante  vermelho");
draw_set_color(c_white);
draw_text(20, _y - 100, "COMANDOS");
draw_text(20, _y - 80, "LMB: Adicionar ponto");
draw_text(20, _y - 60, "R: Recomecar");
draw_text(20, _y - 40, "SPACE:Randomizar soma");


draw_set_halign(fa_center);
