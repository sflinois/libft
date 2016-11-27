/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/04 09:43:09 by sflinois          #+#    #+#             */
/*   Updated: 2016/11/08 14:55:56 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include "libft.h"

void	*ft_memalloc(size_t size)
{
	char	*mem;

	if (!(mem = (void*)malloc(size)))
		return (NULL);
	while (size-- > 0)
		mem[size] = '\0';
	return ((void*)mem);
}
