/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/04 10:15:39 by sflinois          #+#    #+#             */
/*   Updated: 2016/12/17 11:55:13 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include "libft.h"
#include <stdio.h>

char	*ft_strnew(size_t size)
{
	char	*str;
	size_t	tmp;

	if (!(str = (char*)malloc(size + sizeof(char))))
		return (NULL);
	tmp = 0;
	while (tmp <= size)
	{
		str[tmp] = '\0';
		tmp += 1;
	}
	return (str);
}
