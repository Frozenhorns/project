/*
** xml_attr.h for xml in /home/vink/projet/graph/xml/xml_inc
**
** Made by kevin platel
** Login   <vink@epitech.net>
**
** Started on  Mon May  7 11:47:17 2012 kevin platel
** Last update Tue May 29 20:17:32 2012 zoe phalippou
*/

#ifndef	__XML_ATTR_H__
#define __XML_ATTR_H__

typedef	struct s_attr
{
  char	*name;
  char	*content;

  struct	s_attr	*next;
  struct	s_attr	*prev;
} t_attr;

t_attr  *xml_create_attr(char *, int);

#endif
