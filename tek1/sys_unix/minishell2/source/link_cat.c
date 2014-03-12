/*
** link_cat.c for link_cat in /home/platel_k/projet/minishell1/source
**
** Made by kevin platel
** Login   <platel_k@epitech.net>
**
** Started on  Tue Dec 13 20:32:07 2011 kevin platel
** Last update Tue Jan 31 15:36:24 2012 kevin platel
*/

#include <stdlib.h>
#include <my.h>

char	*link_cat(char *cmd, char *path)
{
  char	*link;

  link = malloc(my_strlen(cmd) + my_strlen(path) + 2);
  link[0] = '\0';
  my_strcat(link, path);
  my_strcat(link, "/");
  my_strcat(link, cmd);
  return (link);
}