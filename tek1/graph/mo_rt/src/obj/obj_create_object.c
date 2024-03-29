/*
** obj_create_object.c for obj in /home/vink/projet/graph/xml/obj_src
**
** Made by kevin platel
** Login   <vink@epitech.net>
**
** Started on  Mon May  7 15:14:23 2012 kevin platel
** Last update Wed May 30 01:34:35 2012 alexis leprovost
*/

#include	<stdlib.h>
#include	<stdio.h>
#include	<unistd.h>

#include	"global.h"
#include	"init.h"
#include	"raytracer.h"
#include	"xml_chr.h"
#include	"xml_tree.h"
#include	"object.h"
#include	"my.h"
#include	"obj_create.h"
#include	"obj_print.h"

void		obj_bzero_dim(double *tab)
{
  tab[X] = 0.0F;
  tab[Y] = 0.0F;
  tab[Z] = 0.0F;
}

t_object	*obj_effect(t_object *new, t_xtree *tmp)
{
  tmp = xml_find_in_tree(tmp->sun, STRING_EFFECT);
  if (!tmp)
    obj_bzero_dim(new->effect);
  else
    {
      new->effect[REFLECTION] = my_getdouble(xml_find_attr(tmp->attr, STRING_REFL));
      new->effect[BRIGHTNESS] = my_getdouble(xml_find_attr(tmp->attr, STRING_BRIG));
      new->effect[TRANSPARENCY] = my_getdouble(xml_find_attr(tmp->attr, STRING_TRA));
      new->effect[PHONG] = ABS(my_getdouble(xml_find_attr(tmp->attr, STRING_PHONG)));
      if (new->effect[PHONG] == 0.0F)
	new->effect[PHONG] = (1.0F / QUATRO(new->effect[BRIGHTNESS] + 0.000001F));
    }
  return (new);
}

t_object	*obj_init_dimension(t_xtree *tmp, t_object *new, t_xtree *tree)
{
  if ((tmp = xml_find_in_tree(tree->sun, STRING_LOC)) != NULL)
    {
      new->position[X] = my_getdouble(xml_find_attr(tmp->attr, STRING_X));
      new->position[Y] = my_getdouble(xml_find_attr(tmp->attr, STRING_Y));
      new->position[Z] = my_getdouble(xml_find_attr(tmp->attr, STRING_Z));
    }
  else
    obj_bzero_dim(new->position);
  if ((tmp = xml_find_in_tree(tree->sun, STRING_ROT)) != NULL)
    {
      new->rotation[X] = my_getdouble(xml_find_attr(tmp->attr, STRING_X));
      new->rotation[Y] = my_getdouble(xml_find_attr(tmp->attr, STRING_Y));
      new->rotation[Z] = my_getdouble(xml_find_attr(tmp->attr, STRING_Z));
    }
  else
    obj_bzero_dim(new->rotation);
  if ((tmp = xml_find_in_tree(tree->sun, STRING_PER)) != NULL)
    {
      new->perturbation[X] = my_getdouble(xml_find_attr(tmp->attr, STRING_X));
      new->perturbation[Y] = my_getdouble(xml_find_attr(tmp->attr, STRING_Y));
      new->perturbation[Z] = my_getdouble(xml_find_attr(tmp->attr, STRING_Z));
    }
  else
    obj_bzero_dim(new->perturbation);
  if ((tmp = xml_find_in_tree(tree->sun, STRING_MATERIAL)) != NULL)
    {
      new->material = my_getdouble(tmp->content);
      new->material = !new->material ? 1.0F : new->material;
    }
  else
    new->material = 1.0F;
  return (new);
}

t_object	*obj_add_object(t_xtree *tree, t_object *obj, t_object *o,
				void *mlx_ptr)
{
  t_object	*new;

  if ((new = malloc(sizeof(*new))) == NULL)
    return (NULL);
  new = obj_init_dimension(tree, new, tree);
  if ((int) (new->type = (t_type) obj_get_type(tree->name)) < 0)
    return (NULL);
  new->limit = obj_create_limit(tree);
  new = obj_init_image(tree, new, mlx_ptr);
  new->inter = obj_get_inter_fct(new->type);
  new->normal = obj_get_normal_fct(new->type);
  new->son = obj_create_son(new->type, tree);
  new = obj_effect(new, tree);
  new->attr = tree->attr;
  new->limit = obj_create_limit(tree);
  new->inhibitor = o;
  new->next = NULL;
  new->prev = obj;
  if (obj)
    obj->next = new;
  return (new);
}

t_object	*obj_create_list_object(t_xtree *tree, char *type_get,
					t_object *o, void *mlx_ptr)
{
  t_object	*obj;
  t_object	*tmp;

  tree = xml_find_in_tree(tree, STRING_OBJ);
  if (tree == NULL)
    return (NULL);
  tree = tree->sun;
  if (tree == NULL)
    return (NULL);
  obj = NULL;
  tmp = obj;
  while (tree)
    {
      if (my_strcmp(xml_find_attr(tree->attr, STRING_TYPE), type_get) == 0
	  || (xml_find_attr(tree->attr, STRING_TYPE) == NULL &&
	      my_strcmp(type_get, STRING_NORM) == 0))
	{
	  tmp = obj_add_object(tree, tmp, o, mlx_ptr);
	  if (obj == NULL)
	    obj = tmp;
	}
      tree = tree->next;
    }
  return (obj);
}
