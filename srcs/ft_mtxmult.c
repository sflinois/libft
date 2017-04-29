/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_mtxmult.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sflinois <sflinois@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/29 14:34:11 by sflinois          #+#    #+#             */
/*   Updated: 2017/04/29 17:11:42 by sflinois         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"
#include <stdlib.h>

int			calc_mtx(t_matrix *a, t_matrix *b, int x, int y)
{
	int		i;
	int		ret;

	ret = 0;
	i = 0;
	while (i < a->nb_col)
	{
		ret += a->m[x][i] * b->m[i][y];
		i++;
	}
	return (ret);
}

int			calc_mtx4(int [4][4]a, int [4][4]b, int x, int y)
{
	int		i;
	int		ret;

	ret = 0;
	i = 0;
	while (i < 4)
	{
		ret += a[x][i] * b[i][y];
		i++;
	}
	return (ret);
}

t_matrix	*ft_mtxmult(t_matrix *a, t_matrix *b)
{
	t_matrix	*mtx;
	int			x;
	int			y;

	if (a->nb_col != b->nb_line)
		return (NULL);
	if ((mtx = (t_matrix*)malloc(sizeof(t_matrix))))
	{
		if ((mtx->m = (int**)malloc(sizeof(int*) * (a->nb_line))))
		{
			mtx->nb_line = a->nb_line;
			mtx->nb_col = b->nb_col;
			y = 0;
			while (y < mtx->nb_line)
			{
				if (!(mtx->m[y] = (int*)malloc(sizeof(int) * (mtx->nb_col))))
					return (NULL);
				x = 0;
				while (x < mtx->nb_col)
				{
					mtx->m[y][x] = calc_mtx(a, b, x, y);
					x++;
				}
				y++;
			}
			return (mtx);
		}	
	}
	return (NULL);
}

int		[4][4]ft_mtx4mult(int [4][4]a, int [4][4]b)
{
	int			mtx[4][4];
	int			x;
	int			y;

	y = 0;
	while (y < 4)
	{
		x = 0;
		while (x < 4)
		{
			mtx[y][x] = calc_mtx4(a, b, x, y);
			x++;
		}
		y++;
	}
	return (mtx);
}

t_matrix	*ft_mtxmultint(int a, t_matrix *b)
{
	t_matrix	*mtx;
	int			x;
	int			y;

	if ((mtx = (t_matrix*)malloc(sizeof(t_matrix))))
	{
		if ((mtx->m = (int**)malloc(sizeof(int*) * (b->nb_line))))
		{
			mtx->nb_line = b->nb_line;
			mtx->nb_col = b->nb_col;
			y = 0;
			while (y < mtx->nb_line)
			{
				if (!(mtx->m[y] = (int*)malloc(sizeof(int) * (mtx->nb_col))))
					return (NULL);
				x = 0;
				while (x < mtx->nb_col)
				{
					mtx->m[y][x] = b->m[y][x] * a;
					x++;
				}
				y++;
			}
			return (mtx);
		}	
	}
	return (NULL);
}

int			[4][4]ft_mtx4multint(int a,int [4][4]b)
{
	int			mtx[4][4];
	int			x;
	int			y;

	y = 0;
	while (y < 4)
	{
		x = 0;
		while (x < 4)
		{
			mtx[y][x] = b[y][x] * a;
			x++;
		}
		y++;
	}
	return (mtx);
}
