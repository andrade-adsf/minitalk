/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: feandrad <feandrad@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/18 18:51:51 by feandrad          #+#    #+#             */
/*   Updated: 2023/06/23 19:29:17 by feandrad         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

int	main(int argc, char** argv)
{
	int pid;
	
	if(argc != 3)
	{
		printf("Error!\nWrong number of arguments.\n");
		return (0);
	}
	pid = ft_atoi(argv[1]);
	if (pid < 0)
	{
		printf("Error!\nInvalid PID.\n");
		return (0);
	}
	kill(pid, argv[2]);
}
