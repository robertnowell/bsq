/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_create_elem.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dtse <marvin@42.fr>                        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/07/26 10:55:10 by dtse              #+#    #+#             */
/*   Updated: 2016/07/26 10:55:11 by dtse             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "bsq.h"

t_list		*ft_create_elem(char *data)
{
	t_list	*tmp;

	tmp = malloc(sizeof(t_list));
	if (tmp)
	{
		tmp->data = *data;
		tmp->next = NULL;
	}
	return (tmp);
}

void		ft_list_push_front(t_list **begin_list, char *data)
{
	t_list	*tmp;

	tmp = ft_create_elem(data);
	tmp->next = *begin_list;
	*begin_list = tmp;
}

void		ft_list_push_back(t_list **begin_list, char *data)
{
	t_list	*tmp;

	tmp = *begin_list;
	if (!tmp)
	{
		*begin_list = ft_create_elem(data);
		return ;
	}
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = ft_create_elem(data);
}
