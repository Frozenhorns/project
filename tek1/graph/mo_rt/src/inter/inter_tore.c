/*
** inter_tore.c for raytracer in /home/guiho_r/tek1/rt/src/inter
** 
** Made by ronan guiho
** Login   <guiho_r@epitech.net>
** 
** Started on  Wed May  9 11:18:25 2012 ronan guiho
** Last update Mon May 28 00:30:16 2012 alexis leprovost
*/

#include	<stdio.h>
#include	<stdlib.h>
#include	<math.h>

#include	"raytracer.h"
#include	"global.h"
#include	"camera.h"
#include        "object.h"
#include	"detail.h"
#include	"calc.h"
#include	"utils.h"
#include	"inter.h"
#include	"objects_neg.h"

int	inter_indice_tore(t_camera *camera, t_object *object,
				  double *vector, double *indice)
{
  double	r;
  double	R;
  double	pos[NB_DIMENSION];
  double	u[NB_DIMENSION];

  r = (double)((t_tore *)object->son)->radius[MIN];
  R = (double)((t_tore *)object->son)->radius[MAX];
  if (modif_position(camera->position, object, pos, INVERSE_ROTATION) ||
      modif_vector(object->rotation, vector, u, INVERSE_ROTATION))
    return (EXIT_FAILURE);
  indice[A] = CARRE(CARRE(u[X]) + CARRE(u[Y]) + CARRE(u[Z]));
  indice[B] = 2.0 * (CARRE(u[X]) + CARRE(u[Y]) + CARRE(u[Z])) * \
    (2.0 * (u[X] * pos[X] + u[Y] * pos[Y] + u[Z] * pos[Z]));
  indice[C] = 2.0 * (CARRE(u[X]) + CARRE(u[Y]) + CARRE(u[Z])) *	 \
    (CARRE(pos[X]) + CARRE(pos[Y]) + CARRE(pos[Z]) + CARRE(R) -	 \
     CARRE(r)) + CARRE(2.0 * (u[X] * pos[X] + u[Y] * pos[Y] +	 \
			      u[Z] * pos[Z])) - 4.0 * CARRE(R) * \
    (CARRE(u[X]) + CARRE(u[Z]));
  indice[D] = 2.0 * (2.0 * (u[X] * pos[X] + u[Y] * pos[Y] + u[Z] * pos[Z])) * \
    (CARRE(pos[X]) + CARRE(pos[Y]) + CARRE(pos[Z]) + CARRE(R) - CARRE(r)) - \
    (4.0 * CARRE(R) * 2.0 * (u[X] * pos[X] + u[Z] * pos[Z]));
  indice[E] = CARRE(CARRE(pos[X]) + CARRE(pos[Y]) + CARRE(pos[Z]) + CARRE(R) - \
		    CARRE(r)) - (4.0 * CARRE(R) * (CARRE(pos[X]) +	\
						   CARRE(pos[Z])));
  return (EXIT_SUCCESS);
}

int		inter_tore(t_camera *camera, t_object *object,
			   t_detail *detail, double *vector)
{
  double	k;
  double	indice[5];

  if (!camera || !object || !detail || !vector ||
      inter_indice_tore(camera, object, vector, indice))
    return (EXIT_FAILURE);
  k = inter_equation4deg(indice);
  if (object->limit != NULL)
    return (EXIT_FAILURE);
  if (k > CONST_ERROR && (k < detail->k || detail->k < CONST_ERROR))
    {
      detail->k = k;
      detail->object = object;
    }
  return (EXIT_SUCCESS);
}
