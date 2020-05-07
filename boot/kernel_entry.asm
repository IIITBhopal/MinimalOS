;/** @file : kernel_entry.asm
; *  @brief: This module sits at address 0x1000 and calls the kernel_main
; *			 function in kernel/kernel.c
; *
; *  Copyright (C) 2020  Suraj Upadhyay
; *
; *  This program is free software: you can redistribute it and/or modify
; *  it under the terms of the GNU General Public License as published by
; *  the Free Software Foundation, either version 3 of the License, or
; *  (at your option) any later version.
; *
; *  This program is distributed in the hope that it will be useful,
; *  but WITHOUT ANY WARRANTY; without even the implied warranty of
; *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; *  GNU General Public License for more details.
; *
; *  You should have received a copy of the GNU General Public License
; *  along with this program.  If not, see <https://www.gnu.org/licenses/>.
; **/

global _start
[bits 32]
_start:
	[extern kernel_main]
	call kernel_main
	jmp $

