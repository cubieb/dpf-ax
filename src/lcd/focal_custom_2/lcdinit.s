	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
	lcall	lcd_reset
;
	mov	dptr,#_custom_initseq
	ljmp	_lcd_init_by_table

;
; If custom backlight handling is needed, uncomment the following label
; and set LCD_BACKLIGHT_CUSTOM in dpfmodel.h
; r3 contains brightness value (0 .. LCD_MAX_BRIGHTNESS_VALUE)
;
;_lcd_custom_setbacklight::

;
; If custom contrast handling is needed, uncomment the following label
; and set LCD_CONTRAST_CUSTOM in dpfmodel.h
; r3 contains contrast value (1 .. LCD_MAX_CONTRAST_VALUE)
;
;_lcd_custom_setcontrast::

	.area LCDAUX (CODE)


;backlight_table::
;	.db	If needed, put data for custom backlight handling here
;_custom_backlighttbl_len::  .db  . - backlight_table


;contrast_table::
;	.db	If needed, put data for custom contrast handling here
;_custom_contrasttbl_len::  .db  . - contrast_table

_custom_contrasttbl::
	.db	0x10, 0x10, 0x10, 0x10, 0x10, 0x10, 0x10
_custom_contrasttbl_len::  .db  7

_custom_contrasttbl2::
	.db	0x71, 0x00, 0x71, 0x00, 0x91, 0x00, 0x91, 0x00, 0xff
_custom_contrasttbl2_len::  .db  9

_custom_contrasttbl2_offsets::
	.db	0x07
_custom_contrasttbl2_offsets_len::  .db  1

_custom_backlighttbl::
	.db	0x06, 0x10, 0x1a, 0x24, 0x2e, 0x38, 0x42, 0x4c, 0x56, 0x60
	.db	0x6a, 0x74, 0x7e, 0x88, 0x92, 0x9c, 0xa6, 0xb0, 0xba, 0xc4
	.db	0xce, 0xd8
_custom_backlighttbl_len::  .db  22

_custom_backlighttbl2::
_custom_backlighttbl2_len::  .db  0

_custom_initseq::
	.db	0x00, 0xb0, 0x64, 0x11, 0xb0, 0x0a, 0x10, 0xb0, 0x64, 0x11
	.db	0xb0, 0xff, 0x72, 0x00, 0x00, 0x92, 0x00, 0x01, 0xb0, 0xc8
	.db	0x72, 0x00, 0x01, 0x92, 0x00, 0x00, 0x72, 0x00, 0x03, 0x92
	.db	0x10, 0x80, 0x72, 0x00, 0x10, 0x92, 0x17, 0x90, 0x72, 0x00
	.db	0x60, 0x92, 0x27, 0x00, 0x72, 0x00, 0x61, 0x92, 0x00, 0x01
	.db	0x72, 0x00, 0x46, 0x92, 0x00, 0x02, 0x72, 0x00, 0x13, 0x92
	.db	0x80, 0x10, 0x72, 0x00, 0x12, 0x92, 0x80, 0xfe, 0x72, 0x00
	.db	0x02, 0x92, 0x05, 0x00, 0x72, 0x00, 0x03, 0x92, 0x10, 0x98
	.db	0x72, 0x00, 0x30, 0x92, 0x03, 0x03, 0x72, 0x00, 0x31, 0x92
	.db	0x03, 0x03, 0x72, 0x00, 0x32, 0x92, 0x03, 0x03, 0x72, 0x00
	.db	0x33, 0x92, 0x03, 0x00, 0x72, 0x00, 0x34, 0x92, 0x00, 0x03
	.db	0x72, 0x00, 0x35, 0x92, 0x03, 0x03, 0x72, 0x00, 0x36, 0x92
	.db	0x00, 0x14, 0x72, 0x00, 0x37, 0x92, 0x03, 0x03, 0x72, 0x00
	.db	0x38, 0x92, 0x03, 0x03, 0x72, 0x00, 0x39, 0x92, 0x03, 0x03
	.db	0x72, 0x00, 0x3a, 0x92, 0x03, 0x00, 0x72, 0x00, 0x3b, 0x92
	.db	0x00, 0x03, 0x72, 0x00, 0x3c, 0x92, 0x03, 0x03, 0x72, 0x00
	.db	0x3d, 0x92, 0x14, 0x00, 0x72, 0x00, 0x92, 0x92, 0x02, 0x00
	.db	0x72, 0x00, 0x93, 0x92, 0x03, 0x03, 0x72, 0x00, 0x90, 0x92
	.db	0x08, 0x0d, 0x72, 0x00, 0x07, 0x92, 0x01, 0x73, 0xff
_custom_initseq_len::  .db  189

