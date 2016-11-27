/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/04 10:15:39 by sflinois          #+#    #+#             */
/*   Updated: 2016/11/08 14:56:55 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include "libft.h"

char	*ft_strnew(size_t size)
{
	char	*str;

	if (!(str = (char*)malloc(size + sizeof(char))))
		return (NULL);
	str[size] = '\0';
	while (size-- > 0)
		str[size] = '\0';
	str[size] = '\0';
	return (str);
}
