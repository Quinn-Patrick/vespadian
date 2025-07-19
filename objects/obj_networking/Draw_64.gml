/// @description Insert description here
// You can write your code in this editor
var console = ds_stack_create();
for(var i = 0; i < ds_list_size(messages); i++)
{
	ds_stack_push(console, ds_list_find_value(messages, i));
}
for(var i = 0; i < 10; i++)
{
	draw_text(10, 748 - 16 * i, ds_stack_pop(console));
	if(ds_stack_empty(console)) break;
}
