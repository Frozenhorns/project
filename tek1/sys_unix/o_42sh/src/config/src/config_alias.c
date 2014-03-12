/*
** config_alias.c for 42sh in /home/leprov_a//depot/42sh/src/config/src
** 
** Made by alexis leprovost
** Login   <leprov_a@epitech.net>
** 
** Started on  Mon Apr 16 13:20:19 2012 alexis leprovost
** Last update Fri Apr 27 14:45:31 2012 alexis leprovost
*/

#include	<stdlib.h>

#include	"my_strtok.h"
#include	"config.h"
#include	"xsys.h"
#include	"my.h"
#include	"alias.h"

int	my_putalias(t_alias **begin, char *initial, char *alias)
{
  t_alias	*new_element;

  if ((new_element = xmalloc(sizeof(*new_element))) == NULL)
    return (EXIT_FAILURE);
  new_element->initial = my_strdup(initial);
  new_element->alias = my_strdup(alias);
  new_element->flag = 0;
  new_element->next = *begin;
  *begin = new_element;
  return (EXIT_SUCCESS);
}

int	config_alias(char *str, t_config *config)
{
  char	**tab;
  char	**spec;
  char	*base;

  base = DELIM_ALIAS_STRING;
  if ((tab = my_strtok(str, base, TOK_DELIM)) == NULL ||
      my_tablen(tab) != ALIAS_STRING_NUMBER)
    {
      fprintf(stderr, "Unmatched '.\n");
      return (EXIT_FAILURE);
    }
  base = DELIM_SPACE_STRING;
  if ((spec = my_strtok(tab[0], base, TOK_DELIM)) == NULL ||
      my_tablen(spec) != ALIAS_STRING_NUMBER)
    return (EXIT_FAILURE);
  my_putalias(&config->alias, spec[1], tab[1]);
  my_free_tab(tab);
  my_free_tab(spec);
  return (EXIT_SUCCESS);
}