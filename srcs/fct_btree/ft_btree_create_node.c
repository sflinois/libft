/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_btree_create_node.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <sflinois@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/11 17:34:55 by sflinois          #+#    #+#             */
/*   Updated: 2016/11/14 10:24:51 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

t_btree		*ft_btree_create_node(void *item)
{
	t_btree *node;

	node = NULL;
	if ((node = (t_btree*)malloc(sizeof(*node))))
	{
		node->left = 0;
		node->right = 0;
		node->item = item;
	}
	return (node);
}
