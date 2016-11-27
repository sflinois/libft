/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <sflinois@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/10 10:23:05 by sflinois          #+#    #+#             */
/*   Updated: 2016/11/10 10:41:53 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>
#include <stdlib.h>

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	unsigned int		inf;

	inf = (dst > src) ? 1 : 0;
	if (inf)
		while (len-- > 0)
			*(unsigned char*)(dst + len) = *(unsigned char*)(src + len);
	else
		while (inf++ < len)
			*(unsigned char*)(dst + inf - 1) = *(unsigned char*)(src + inf - 1);
	return (dst);
}
