/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grenaud- <grenaud-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/14 14:07:02 by grenaud-          #+#    #+#             */
/*   Updated: 2021/12/14 17:30:59 by grenaud-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>

int		ft_printf(const char *str, ...);
int		ft_formats(va_list args, const char format);
int		ft_printchar(char c);
int		ft_printstr(char *str);
int		ft_printnbr(int n);
int		ft_printunsigned(unsigned int n);
int		ft_printpercent(void);
int		ft_numlen(unsigned int num);
int		ft_printhex(unsigned int num, const char format);
int		ft_hexlen(unsigned int num);
int		ft_ptrlen(uintptr_t num);
int		ft_printptr(unsigned long long ptr);

void	ft_putstr(char *str);
void	ft_puthex(unsigned int num, const char format);
char	*ft_uitoa(unsigned int n);
void	ft_putptr(uintptr_t num);

#endif