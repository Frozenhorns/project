/*
** normal_cubetroue.c for raytracer in /home/leprov_a//depot/rt/src/normal
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Fri May 25 19:44:25 2012 alexis leprovost
** Last update Sun May 27 15:47:19 2012 alexis leprovost
*/

#include	<stdlib.h>

#include	"raytracer.h"
#include	"global.h"
#include	"detail.h"
#include	"utils.h"

int	normal_cubetroue(double *n, t_detail *detail, double *position, double *v)
{
  if (n == NULL || detail == NULL || position == NULL || v == NULL)
    return (EXIT_FAILURE);
  n[X] = (4.000 * CUBE(detail->position[X])) - (10.000 * detail->position[X]);
  n[Y] = (4.000 * CUBE(detail->position[Y])) - (10.000 * detail->position[Y]);
  n[Z] = (4.000 * CUBE(detail->position[Z])) - (10.000 * detail->position[Z]);
  return (EXIT_SUCCESS);
}