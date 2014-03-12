/*
** obj_create.h for obj in /home/vink/projet/graph/rt/src/obj
**
** Made by kevin platel
** Login   <vink@epitech.net>
**
** Started on  Tue May  8 16:37:39 2012 kevin platel
*/

#ifndef	__OBJ_CREATE_H__
#define __OBJ_CREATE_H__

#include	"parse.h"
#include	"object.h"
#include	"camera.h"
#include	"light.h"
#include	"xml_tree.h"
#include	"global.h"

typedef	void	*(*t_create)(t_xtree *);

int		obj_get_light_type(char *);
t_object	*obj_create_list_object(t_xtree *, char *, t_object *, void *);
t_scene		*obj_create_scene(t_xtree *, void *);
void		*obj_create_son(int, t_xtree *);
t_window	*obj_create_window(t_global *, t_xtree *);
t_inter		obj_get_inter_fct(int);
int		obj_get_type(char *);
t_camera	*obj_create_list_cam(t_xtree *);
t_light		*obj_create_list_light(t_xtree *);
t_object*	obj_init_image(t_xtree *, t_object *, void *);
t_normal	obj_get_normal_fct(int);




#endif