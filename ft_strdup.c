/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/04 13:54:27 by sflinois          #+#    #+#             */
/*   Updated: 2016/12/16 19:19:22 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*s2;
	int		len;

	len = ft_strlen(s1);
	if (!(s2 = (char*)malloc(sizeof(char) * (len + 1))))
		return (NULL);
	s2[len] = '\0';
	while (len-- > 0)
		s2[len] = s1[len];
	return (s2);
}
