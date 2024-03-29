/*
** event_key.c for raytracer in /home/leprov_a//depot/rt
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Tue May  1 21:26:40 2012 alexis leprovost
** Last update Mon May 28 21:50:55 2012 ronan guiho
*/

#include	<stdlib.h>

#include	"keycode.h"
#include	"global.h"
#include	"free.h"

int	event_key(int keycode, t_global *global)
{
  if (keycode == ESC)
    {
      free_global(global);
      exit(EXIT_FAILURE);
    }
  return (EXIT_SUCCESS);
}
