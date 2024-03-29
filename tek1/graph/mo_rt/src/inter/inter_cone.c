/*
** inter_cone.c for raytracer in /home/leprov_a//depot/rt/src/inter
**
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
**
** Started on  Tue May  8 11:29:47 2012 alexis leprovost
** Last update Sun May 27 14:04:50 2012 kevin platel
*/

#include	<stdlib.h>
#include	<math.h>

#include	"raytracer.h"
#include	"camera.h"
#include        "object.h"
#include	"detail.h"
#include	"calc.h"
#include	"utils.h"
#include	"inter.h"
#include	"objects_neg.h"

int	inter_indice_cone(t_camera *camera, t_object *object,
			     double *vector, double *indice)
{
  double	pos[NB_DIMENSION];
  double	u[NB_DIMENSION];
  double	radian;
  double	opening;

  radian = (((t_cone *)object->son)->angle * M_PI) / 180.000;
  opening = CARRE(tan(radian));
  if (!opening)
    opening += EPSILON;
  if (modif_position(camera->position, object, pos, INVERSE_ROTATION) ||
      modif_vector(object->rotation, vector, u, INVERSE_ROTATION))
    return (EXIT_FAILURE);
  indice[A] = CARRE(u[X]) + CARRE(u[Y]) - (CARRE(u[Z]) / opening);
  indice[B] = 2.000 *
    ((pos[X] * u[X]) + (pos[Y] * u[Y]) - (pos[Z] * (u[Z]) / opening));
  indice[C] = CARRE(pos[X]) + CARRE(pos[Y]) - (CARRE(pos[Z]) / opening);
  indice[DELTA] = CARRE(indice[B]) - (4.000 * indice[A] * indice[C]);
  return (EXIT_SUCCESS);
}

int
inter_cone(t_camera *camera, t_object *object, t_detail *detail, double *vector)
{
  double	indice[NB_INDICE];
  double	k[2];

  if (!camera || !object || !detail || !vector ||
      inter_indice_cone(camera, object, vector, indice))
    return (EXIT_FAILURE);
  if (indice[DELTA] >= 0.000)
    {
      if (calc_k(indice, k))
	return (EXIT_FAILURE);
      if ((detail->k < CONST_ERROR && (k[0] > CONST_ERROR || k[1] > CONST_ERROR)) ||
	  (k[0] > CONST_ERROR && (k[1] > CONST_ERROR && k[0] < k[1]) && k[0] < detail->k) ||
	  (k[1] > CONST_ERROR && (k[0] > CONST_ERROR && k[1] < k[0]) && k[1] < detail->k))
	{
	  detail->k = SMALLER_POSITIVE_NUMBER(k[0], k[1]);
	  detail->object = object;
	}
    }
  return (EXIT_SUCCESS);
}
