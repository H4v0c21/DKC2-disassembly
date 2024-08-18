
null_custom_code:
	RTS					; Dummy code that does nothing and returns (used as default for custom level code)
	
custom_pre_nmi_handler:
	PHK					;\ Set DB to this bank
	PLB					;/
	LDA custom_global_pre_nmi_pointer	;\ Write global pointer to scratch
	STA $32					; |
	LDA custom_global_pre_nmi_pointer+2	; |
	STA $34					;/
	%return(.global_return)			;> Push return address to stack so we can get back here with a RTL
	JML [$0032]				;> Execute custom global code for level (before vanilla nmi code)
.global_return
	LDA level_number			;\
	ASL					; |
	TAX					; |
	JSR (custom_pre_nmi_table,x)		;/ Execute level specific code (before vanilla nmi code)
	RTL					;> Return to vanilla code
	
custom_post_nmi_handler:
	PHK					;\ Set DB to this bank
	PLB					;/
	LDA custom_global_post_nmi_pointer	;\ Write global pointer to scratch
	STA $32					; |
	LDA custom_global_post_nmi_pointer+2	; |
	STA $34					;/
	%return(.global_return)			;> Push return address to stack so we can get back here with a RTL
	JML [$0032]				;> Execute custom global code for level (after vanilla nmi)
.global_return
	LDA level_number			;\
	ASL					; |
	TAX					; |
	JSR (custom_post_nmi_table,x)		;/ Execute level specific code (after vanilla nmi code)
	RTL					;> Return to vanilla code
	
custom_post_logic_handler:
	PHK					;\ Set DB to this bank
	PLB					;/
	LDA custom_global_post_logic_pointer	;\ Write global pointer to scratch
	STA $32					; |
	LDA custom_global_post_logic_pointer+2	; |
	STA $34					;/
	%return(.global_return)			;> Push return address to stack so we can get back here with a RTL
	JML [$0032]				;> Execute custom global code for level (after vanilla logic code)
.global_return
	LDA level_number			;\
	ASL					; |
	TAX					; |
	JSR (custom_post_logic_table,x)		;/ Execute level specific code (after vanilla logic code)
	RTL					;> Return to vanilla code

custom_level_load_handler:
	PHB					; Preserve DB
	PHK					;\ Set DB to this bank
	PLB					;/
	LDA custom_global_level_load_pointer	;\
	STA $32					; |
	LDA custom_global_level_load_pointer+2	; |
	STA $34					;/
	%return(.global_return)			;> Push return address to stack so we can get back here with a RTL
	JML [$0032]				;> Execute custom global code for level (after vanilla level load code)
.global_return
	LDA level_number			;\
	ASL					; |
	TAX					; |
	JSR (custom_level_load_table,x)		;/ Execute level specific code (after vanilla level load code)
	PLB					; Retrieve DB
	JSL CODE_B5B9ED				; Execute overwritten vanilla code
	RTL					;> Return to vanilla code


;This table contains pointer for every level, points to code that will run BEFORE vanilla nmi and logic code
custom_pre_nmi_table:
	dw null_custom_code	;00
	dw null_custom_code	;01
	dw null_custom_code	;02
	dw null_custom_code	;03
	dw null_custom_code	;04
	dw null_custom_code	;05
	dw null_custom_code	;06
	dw null_custom_code	;07
	dw null_custom_code	;08
	dw null_custom_code	;09
	dw null_custom_code	;0A
	dw null_custom_code	;0B
	dw null_custom_code	;0C
	dw null_custom_code	;0D
	dw null_custom_code	;0E
	dw null_custom_code	;0F
	dw null_custom_code	;10
	dw null_custom_code	;11
	dw null_custom_code	;12
	dw null_custom_code	;13
	dw null_custom_code	;14
	dw null_custom_code	;15
	dw null_custom_code	;16
	dw null_custom_code	;17
	dw null_custom_code	;18
	dw null_custom_code	;19
	dw null_custom_code	;1A
	dw null_custom_code	;1B
	dw null_custom_code	;1C
	dw null_custom_code	;1D
	dw null_custom_code	;1E
	dw null_custom_code	;1F
	dw null_custom_code	;20
	dw null_custom_code	;21
	dw null_custom_code	;22
	dw null_custom_code	;23
	dw null_custom_code	;24
	dw null_custom_code	;25
	dw null_custom_code	;26
	dw null_custom_code	;27
	dw null_custom_code	;28
	dw null_custom_code	;29
	dw null_custom_code	;2A
	dw null_custom_code	;2B
	dw null_custom_code	;2C
	dw null_custom_code	;2D
	dw null_custom_code	;2E
	dw null_custom_code	;2F
	dw null_custom_code	;30
	dw null_custom_code	;31
	dw null_custom_code	;32
	dw null_custom_code	;33
	dw null_custom_code	;34
	dw null_custom_code	;35
	dw null_custom_code	;36
	dw null_custom_code	;37
	dw null_custom_code	;38
	dw null_custom_code	;39
	dw null_custom_code	;3A
	dw null_custom_code	;3B
	dw null_custom_code	;3C
	dw null_custom_code	;3D
	dw null_custom_code	;3E
	dw null_custom_code	;3F
	dw null_custom_code	;40
	dw null_custom_code	;41
	dw null_custom_code	;42
	dw null_custom_code	;43
	dw null_custom_code	;44
	dw null_custom_code	;45
	dw null_custom_code	;46
	dw null_custom_code	;47
	dw null_custom_code	;48
	dw null_custom_code	;49
	dw null_custom_code	;4A
	dw null_custom_code	;4B
	dw null_custom_code	;4C
	dw null_custom_code	;4D
	dw null_custom_code	;4E
	dw null_custom_code	;4F
	dw null_custom_code	;50
	dw null_custom_code	;51
	dw null_custom_code	;52
	dw null_custom_code	;53
	dw null_custom_code	;54
	dw null_custom_code	;55
	dw null_custom_code	;56
	dw null_custom_code	;57
	dw null_custom_code	;58
	dw null_custom_code	;59
	dw null_custom_code	;5A
	dw null_custom_code	;5B
	dw null_custom_code	;5C
	dw null_custom_code	;5D
	dw null_custom_code	;5E
	dw null_custom_code	;5F
	dw null_custom_code	;60
        dw null_custom_code	;61
        dw null_custom_code	;62
        dw null_custom_code	;63
        dw null_custom_code	;64
        dw null_custom_code	;65
        dw null_custom_code	;66
        dw null_custom_code	;67
        dw null_custom_code	;68
        dw null_custom_code	;69
        dw null_custom_code	;6A
        dw null_custom_code	;6B
        dw null_custom_code	;6C
        dw null_custom_code	;6D
        dw null_custom_code	;6E
        dw null_custom_code	;6F
	dw null_custom_code	;70
        dw null_custom_code	;71
        dw null_custom_code	;72
        dw null_custom_code	;73
        dw null_custom_code	;74
        dw null_custom_code	;75
        dw null_custom_code	;76
        dw null_custom_code	;77
        dw null_custom_code	;78
        dw null_custom_code	;79
        dw null_custom_code	;7A
        dw null_custom_code	;7B
        dw null_custom_code	;7C
        dw null_custom_code	;7D
        dw null_custom_code	;7E
        dw null_custom_code	;7F
	dw null_custom_code	;80
        dw null_custom_code	;81
        dw null_custom_code	;82
        dw null_custom_code	;83
        dw null_custom_code	;84
        dw null_custom_code	;85
        dw null_custom_code	;86
        dw null_custom_code	;87
        dw null_custom_code	;88
        dw null_custom_code	;89
        dw null_custom_code	;8A
        dw null_custom_code	;8B
        dw null_custom_code	;8C
        dw null_custom_code	;8D
        dw null_custom_code	;8E
        dw null_custom_code	;8F
	dw null_custom_code	;90
        dw null_custom_code	;91
        dw null_custom_code	;92
        dw null_custom_code	;93
        dw null_custom_code	;94
        dw null_custom_code	;95
        dw null_custom_code	;96
        dw null_custom_code	;97
        dw null_custom_code	;98
        dw null_custom_code	;99
        dw null_custom_code	;9A
        dw null_custom_code	;9B
        dw null_custom_code	;9C
        dw null_custom_code	;9D
        dw null_custom_code	;9E
        dw null_custom_code	;9F
	dw null_custom_code	;A0
        dw null_custom_code	;A1
        dw null_custom_code	;A2
        dw null_custom_code	;A3
        dw null_custom_code	;A4
        dw null_custom_code	;A5
        dw null_custom_code	;A6
        dw null_custom_code	;A7
        dw null_custom_code	;A8
        dw null_custom_code	;A9
        dw null_custom_code	;AA
        dw null_custom_code	;AB
        dw null_custom_code	;AC
        dw null_custom_code	;AD
        dw null_custom_code	;AE
        dw null_custom_code	;AF
	dw null_custom_code	;B0
        dw null_custom_code	;B1
        dw null_custom_code	;B2
        dw null_custom_code	;B3
        dw null_custom_code	;B4
        dw null_custom_code	;B5
        dw null_custom_code	;B6
        dw null_custom_code	;B7
        dw null_custom_code	;B8
        dw null_custom_code	;B9
        dw null_custom_code	;BA
        dw null_custom_code	;BB
        dw null_custom_code	;BC
        dw null_custom_code	;BD
        dw null_custom_code	;BE
        dw null_custom_code	;BF
	dw null_custom_code	;C0
        dw null_custom_code	;C1
        dw null_custom_code	;C2
        dw null_custom_code	;C3
        dw null_custom_code	;C4
        dw null_custom_code	;C5
        dw null_custom_code	;C6
        dw null_custom_code	;C7
        dw null_custom_code	;C8
        dw null_custom_code	;C9
        dw null_custom_code	;CA
        dw null_custom_code	;CB
        dw null_custom_code	;CC
        dw null_custom_code	;CD
        dw null_custom_code	;CE
        dw null_custom_code	;CF
	dw null_custom_code	;D0
        dw null_custom_code	;D1
        dw null_custom_code	;D2
        dw null_custom_code	;D3
        dw null_custom_code	;D4
        dw null_custom_code	;D5
        dw null_custom_code	;D6
        dw null_custom_code	;D7
        dw null_custom_code	;D8
        dw null_custom_code	;D9
        dw null_custom_code	;DA
        dw null_custom_code	;DB
        dw null_custom_code	;DC
        dw null_custom_code	;DD
        dw null_custom_code	;DE
        dw null_custom_code	;DF
	dw null_custom_code	;E0
        dw null_custom_code	;E1
        dw null_custom_code	;E2
        dw null_custom_code	;E3
        dw null_custom_code	;E4
        dw null_custom_code	;E5
        dw null_custom_code	;E6
        dw null_custom_code	;E7
        dw null_custom_code	;E8
        dw null_custom_code	;E9
        dw null_custom_code	;EA
        dw null_custom_code	;EB
        dw null_custom_code	;EC
        dw null_custom_code	;ED
        dw null_custom_code	;EE
        dw null_custom_code	;EF
	dw null_custom_code	;F0
        dw null_custom_code	;F1
        dw null_custom_code	;F2
        dw null_custom_code	;F3
        dw null_custom_code	;F4
        dw null_custom_code	;F5
        dw null_custom_code	;F6
        dw null_custom_code	;F7
        dw null_custom_code	;F8
        dw null_custom_code	;F9
        dw null_custom_code	;FA
        dw null_custom_code	;FB
        dw null_custom_code	;FC
        dw null_custom_code	;FD
        dw null_custom_code	;FE
        dw null_custom_code	;FF


;This table contains pointer for every level, points to code that will run AFTER vanilla nmi code and BEFORE vanilla logic code
custom_post_nmi_table:
	dw null_custom_code	;00
	dw null_custom_code	;01
	dw null_custom_code	;02
	dw null_custom_code	;03
	dw null_custom_code	;04
	dw null_custom_code	;05
	dw null_custom_code	;06
	dw null_custom_code	;07
	dw null_custom_code	;08
	dw null_custom_code	;09
	dw null_custom_code	;0A
	dw null_custom_code	;0B
	dw null_custom_code	;0C
	dw null_custom_code	;0D
	dw null_custom_code	;0E
	dw null_custom_code	;0F
	dw null_custom_code	;10
	dw null_custom_code	;11
	dw null_custom_code	;12
	dw null_custom_code	;13
	dw null_custom_code	;14
	dw null_custom_code	;15
	dw null_custom_code	;16
	dw null_custom_code	;17
	dw null_custom_code	;18
	dw null_custom_code	;19
	dw null_custom_code	;1A
	dw null_custom_code	;1B
	dw null_custom_code	;1C
	dw null_custom_code	;1D
	dw null_custom_code	;1E
	dw null_custom_code	;1F
	dw null_custom_code	;20
	dw null_custom_code	;21
	dw null_custom_code	;22
	dw null_custom_code	;23
	dw null_custom_code	;24
	dw null_custom_code	;25
	dw null_custom_code	;26
	dw null_custom_code	;27
	dw null_custom_code	;28
	dw null_custom_code	;29
	dw null_custom_code	;2A
	dw null_custom_code	;2B
	dw null_custom_code	;2C
	dw null_custom_code	;2D
	dw null_custom_code	;2E
	dw null_custom_code	;2F
	dw null_custom_code	;30
	dw null_custom_code	;31
	dw null_custom_code	;32
	dw null_custom_code	;33
	dw null_custom_code	;34
	dw null_custom_code	;35
	dw null_custom_code	;36
	dw null_custom_code	;37
	dw null_custom_code	;38
	dw null_custom_code	;39
	dw null_custom_code	;3A
	dw null_custom_code	;3B
	dw null_custom_code	;3C
	dw null_custom_code	;3D
	dw null_custom_code	;3E
	dw null_custom_code	;3F
	dw null_custom_code	;40
	dw null_custom_code	;41
	dw null_custom_code	;42
	dw null_custom_code	;43
	dw null_custom_code	;44
	dw null_custom_code	;45
	dw null_custom_code	;46
	dw null_custom_code	;47
	dw null_custom_code	;48
	dw null_custom_code	;49
	dw null_custom_code	;4A
	dw null_custom_code	;4B
	dw null_custom_code	;4C
	dw null_custom_code	;4D
	dw null_custom_code	;4E
	dw null_custom_code	;4F
	dw null_custom_code	;50
	dw null_custom_code	;51
	dw null_custom_code	;52
	dw null_custom_code	;53
	dw null_custom_code	;54
	dw null_custom_code	;55
	dw null_custom_code	;56
	dw null_custom_code	;57
	dw null_custom_code	;58
	dw null_custom_code	;59
	dw null_custom_code	;5A
	dw null_custom_code	;5B
	dw null_custom_code	;5C
	dw null_custom_code	;5D
	dw null_custom_code	;5E
	dw null_custom_code	;5F
	dw null_custom_code	;60
        dw null_custom_code	;61
        dw null_custom_code	;62
        dw null_custom_code	;63
        dw null_custom_code	;64
        dw null_custom_code	;65
        dw null_custom_code	;66
        dw null_custom_code	;67
        dw null_custom_code	;68
        dw null_custom_code	;69
        dw null_custom_code	;6A
        dw null_custom_code	;6B
        dw null_custom_code	;6C
        dw null_custom_code	;6D
        dw null_custom_code	;6E
        dw null_custom_code	;6F
	dw null_custom_code	;70
        dw null_custom_code	;71
        dw null_custom_code	;72
        dw null_custom_code	;73
        dw null_custom_code	;74
        dw null_custom_code	;75
        dw null_custom_code	;76
        dw null_custom_code	;77
        dw null_custom_code	;78
        dw null_custom_code	;79
        dw null_custom_code	;7A
        dw null_custom_code	;7B
        dw null_custom_code	;7C
        dw null_custom_code	;7D
        dw null_custom_code	;7E
        dw null_custom_code	;7F
	dw null_custom_code	;80
        dw null_custom_code	;81
        dw null_custom_code	;82
        dw null_custom_code	;83
        dw null_custom_code	;84
        dw null_custom_code	;85
        dw null_custom_code	;86
        dw null_custom_code	;87
        dw null_custom_code	;88
        dw null_custom_code	;89
        dw null_custom_code	;8A
        dw null_custom_code	;8B
        dw null_custom_code	;8C
        dw null_custom_code	;8D
        dw null_custom_code	;8E
        dw null_custom_code	;8F
	dw null_custom_code	;90
        dw null_custom_code	;91
        dw null_custom_code	;92
        dw null_custom_code	;93
        dw null_custom_code	;94
        dw null_custom_code	;95
        dw null_custom_code	;96
        dw null_custom_code	;97
        dw null_custom_code	;98
        dw null_custom_code	;99
        dw null_custom_code	;9A
        dw null_custom_code	;9B
        dw null_custom_code	;9C
        dw null_custom_code	;9D
        dw null_custom_code	;9E
        dw null_custom_code	;9F
	dw null_custom_code	;A0
        dw null_custom_code	;A1
        dw null_custom_code	;A2
        dw null_custom_code	;A3
        dw null_custom_code	;A4
        dw null_custom_code	;A5
        dw null_custom_code	;A6
        dw null_custom_code	;A7
        dw null_custom_code	;A8
        dw null_custom_code	;A9
        dw null_custom_code	;AA
        dw null_custom_code	;AB
        dw null_custom_code	;AC
        dw null_custom_code	;AD
        dw null_custom_code	;AE
        dw null_custom_code	;AF
	dw null_custom_code	;B0
        dw null_custom_code	;B1
        dw null_custom_code	;B2
        dw null_custom_code	;B3
        dw null_custom_code	;B4
        dw null_custom_code	;B5
        dw null_custom_code	;B6
        dw null_custom_code	;B7
        dw null_custom_code	;B8
        dw null_custom_code	;B9
        dw null_custom_code	;BA
        dw null_custom_code	;BB
        dw null_custom_code	;BC
        dw null_custom_code	;BD
        dw null_custom_code	;BE
        dw null_custom_code	;BF
	dw null_custom_code	;C0
        dw null_custom_code	;C1
        dw null_custom_code	;C2
        dw null_custom_code	;C3
        dw null_custom_code	;C4
        dw null_custom_code	;C5
        dw null_custom_code	;C6
        dw null_custom_code	;C7
        dw null_custom_code	;C8
        dw null_custom_code	;C9
        dw null_custom_code	;CA
        dw null_custom_code	;CB
        dw null_custom_code	;CC
        dw null_custom_code	;CD
        dw null_custom_code	;CE
        dw null_custom_code	;CF
	dw null_custom_code	;D0
        dw null_custom_code	;D1
        dw null_custom_code	;D2
        dw null_custom_code	;D3
        dw null_custom_code	;D4
        dw null_custom_code	;D5
        dw null_custom_code	;D6
        dw null_custom_code	;D7
        dw null_custom_code	;D8
        dw null_custom_code	;D9
        dw null_custom_code	;DA
        dw null_custom_code	;DB
        dw null_custom_code	;DC
        dw null_custom_code	;DD
        dw null_custom_code	;DE
        dw null_custom_code	;DF
	dw null_custom_code	;E0
        dw null_custom_code	;E1
        dw null_custom_code	;E2
        dw null_custom_code	;E3
        dw null_custom_code	;E4
        dw null_custom_code	;E5
        dw null_custom_code	;E6
        dw null_custom_code	;E7
        dw null_custom_code	;E8
        dw null_custom_code	;E9
        dw null_custom_code	;EA
        dw null_custom_code	;EB
        dw null_custom_code	;EC
        dw null_custom_code	;ED
        dw null_custom_code	;EE
        dw null_custom_code	;EF
	dw null_custom_code	;F0
        dw null_custom_code	;F1
        dw null_custom_code	;F2
        dw null_custom_code	;F3
        dw null_custom_code	;F4
        dw null_custom_code	;F5
        dw null_custom_code	;F6
        dw null_custom_code	;F7
        dw null_custom_code	;F8
        dw null_custom_code	;F9
        dw null_custom_code	;FA
        dw null_custom_code	;FB
        dw null_custom_code	;FC
        dw null_custom_code	;FD
        dw null_custom_code	;FE
        dw null_custom_code	;FF


;This table contains pointer for every level, points to code that will run AFTER vanilla logic code
custom_post_logic_table:
	dw null_custom_code	;00
	dw null_custom_code	;01
	dw null_custom_code	;02
	dw null_custom_code	;03
	dw null_custom_code	;04
	dw null_custom_code	;05
	dw null_custom_code	;06
	dw null_custom_code	;07
	dw null_custom_code	;08
	dw null_custom_code	;09
	dw null_custom_code	;0A
	dw null_custom_code	;0B
	dw null_custom_code	;0C
	dw null_custom_code	;0D
	dw null_custom_code	;0E
	dw null_custom_code	;0F
	dw null_custom_code	;10
	dw null_custom_code	;11
	dw null_custom_code	;12
	dw null_custom_code	;13
	dw null_custom_code	;14
	dw null_custom_code	;15
	dw null_custom_code	;16
	dw null_custom_code	;17
	dw null_custom_code	;18
	dw null_custom_code	;19
	dw null_custom_code	;1A
	dw null_custom_code	;1B
	dw null_custom_code	;1C
	dw null_custom_code	;1D
	dw null_custom_code	;1E
	dw null_custom_code	;1F
	dw null_custom_code	;20
	dw null_custom_code	;21
	dw null_custom_code	;22
	dw null_custom_code	;23
	dw null_custom_code	;24
	dw null_custom_code	;25
	dw null_custom_code	;26
	dw null_custom_code	;27
	dw null_custom_code	;28
	dw null_custom_code	;29
	dw null_custom_code	;2A
	dw null_custom_code	;2B
	dw null_custom_code	;2C
	dw null_custom_code	;2D
	dw null_custom_code	;2E
	dw null_custom_code	;2F
	dw null_custom_code	;30
	dw null_custom_code	;31
	dw null_custom_code	;32
	dw null_custom_code	;33
	dw null_custom_code	;34
	dw null_custom_code	;35
	dw null_custom_code	;36
	dw null_custom_code	;37
	dw null_custom_code	;38
	dw null_custom_code	;39
	dw null_custom_code	;3A
	dw null_custom_code	;3B
	dw null_custom_code	;3C
	dw null_custom_code	;3D
	dw null_custom_code	;3E
	dw null_custom_code	;3F
	dw null_custom_code	;40
	dw null_custom_code	;41
	dw null_custom_code	;42
	dw null_custom_code	;43
	dw null_custom_code	;44
	dw null_custom_code	;45
	dw null_custom_code	;46
	dw null_custom_code	;47
	dw null_custom_code	;48
	dw null_custom_code	;49
	dw null_custom_code	;4A
	dw null_custom_code	;4B
	dw null_custom_code	;4C
	dw null_custom_code	;4D
	dw null_custom_code	;4E
	dw null_custom_code	;4F
	dw null_custom_code	;50
	dw null_custom_code	;51
	dw null_custom_code	;52
	dw null_custom_code	;53
	dw null_custom_code	;54
	dw null_custom_code	;55
	dw null_custom_code	;56
	dw null_custom_code	;57
	dw null_custom_code	;58
	dw null_custom_code	;59
	dw null_custom_code	;5A
	dw null_custom_code	;5B
	dw null_custom_code	;5C
	dw null_custom_code	;5D
	dw null_custom_code	;5E
	dw null_custom_code	;5F
	dw null_custom_code	;60
        dw null_custom_code	;61
        dw null_custom_code	;62
        dw null_custom_code	;63
        dw null_custom_code	;64
        dw null_custom_code	;65
        dw null_custom_code	;66
        dw null_custom_code	;67
        dw null_custom_code	;68
        dw null_custom_code	;69
        dw null_custom_code	;6A
        dw null_custom_code	;6B
        dw null_custom_code	;6C
        dw null_custom_code	;6D
        dw null_custom_code	;6E
        dw null_custom_code	;6F
	dw null_custom_code	;70
        dw null_custom_code	;71
        dw null_custom_code	;72
        dw null_custom_code	;73
        dw null_custom_code	;74
        dw null_custom_code	;75
        dw null_custom_code	;76
        dw null_custom_code	;77
        dw null_custom_code	;78
        dw null_custom_code	;79
        dw null_custom_code	;7A
        dw null_custom_code	;7B
        dw null_custom_code	;7C
        dw null_custom_code	;7D
        dw null_custom_code	;7E
        dw null_custom_code	;7F
	dw null_custom_code	;80
        dw null_custom_code	;81
        dw null_custom_code	;82
        dw null_custom_code	;83
        dw null_custom_code	;84
        dw null_custom_code	;85
        dw null_custom_code	;86
        dw null_custom_code	;87
        dw null_custom_code	;88
        dw null_custom_code	;89
        dw null_custom_code	;8A
        dw null_custom_code	;8B
        dw null_custom_code	;8C
        dw null_custom_code	;8D
        dw null_custom_code	;8E
        dw null_custom_code	;8F
	dw null_custom_code	;90
        dw null_custom_code	;91
        dw null_custom_code	;92
        dw null_custom_code	;93
        dw null_custom_code	;94
        dw null_custom_code	;95
        dw null_custom_code	;96
        dw null_custom_code	;97
        dw null_custom_code	;98
        dw null_custom_code	;99
        dw null_custom_code	;9A
        dw null_custom_code	;9B
        dw null_custom_code	;9C
        dw null_custom_code	;9D
        dw null_custom_code	;9E
        dw null_custom_code	;9F
	dw null_custom_code	;A0
        dw null_custom_code	;A1
        dw null_custom_code	;A2
        dw null_custom_code	;A3
        dw null_custom_code	;A4
        dw null_custom_code	;A5
        dw null_custom_code	;A6
        dw null_custom_code	;A7
        dw null_custom_code	;A8
        dw null_custom_code	;A9
        dw null_custom_code	;AA
        dw null_custom_code	;AB
        dw null_custom_code	;AC
        dw null_custom_code	;AD
        dw null_custom_code	;AE
        dw null_custom_code	;AF
	dw null_custom_code	;B0
        dw null_custom_code	;B1
        dw null_custom_code	;B2
        dw null_custom_code	;B3
        dw null_custom_code	;B4
        dw null_custom_code	;B5
        dw null_custom_code	;B6
        dw null_custom_code	;B7
        dw null_custom_code	;B8
        dw null_custom_code	;B9
        dw null_custom_code	;BA
        dw null_custom_code	;BB
        dw null_custom_code	;BC
        dw null_custom_code	;BD
        dw null_custom_code	;BE
        dw null_custom_code	;BF
	dw null_custom_code	;C0
        dw null_custom_code	;C1
        dw null_custom_code	;C2
        dw null_custom_code	;C3
        dw null_custom_code	;C4
        dw null_custom_code	;C5
        dw null_custom_code	;C6
        dw null_custom_code	;C7
        dw null_custom_code	;C8
        dw null_custom_code	;C9
        dw null_custom_code	;CA
        dw null_custom_code	;CB
        dw null_custom_code	;CC
        dw null_custom_code	;CD
        dw null_custom_code	;CE
        dw null_custom_code	;CF
	dw null_custom_code	;D0
        dw null_custom_code	;D1
        dw null_custom_code	;D2
        dw null_custom_code	;D3
        dw null_custom_code	;D4
        dw null_custom_code	;D5
        dw null_custom_code	;D6
        dw null_custom_code	;D7
        dw null_custom_code	;D8
        dw null_custom_code	;D9
        dw null_custom_code	;DA
        dw null_custom_code	;DB
        dw null_custom_code	;DC
        dw null_custom_code	;DD
        dw null_custom_code	;DE
        dw null_custom_code	;DF
	dw null_custom_code	;E0
        dw null_custom_code	;E1
        dw null_custom_code	;E2
        dw null_custom_code	;E3
        dw null_custom_code	;E4
        dw null_custom_code	;E5
        dw null_custom_code	;E6
        dw null_custom_code	;E7
        dw null_custom_code	;E8
        dw null_custom_code	;E9
        dw null_custom_code	;EA
        dw null_custom_code	;EB
        dw null_custom_code	;EC
        dw null_custom_code	;ED
        dw null_custom_code	;EE
        dw null_custom_code	;EF
	dw null_custom_code	;F0
        dw null_custom_code	;F1
        dw null_custom_code	;F2
        dw null_custom_code	;F3
        dw null_custom_code	;F4
        dw null_custom_code	;F5
        dw null_custom_code	;F6
        dw null_custom_code	;F7
        dw null_custom_code	;F8
        dw null_custom_code	;F9
        dw null_custom_code	;FA
        dw null_custom_code	;FB
        dw null_custom_code	;FC
        dw null_custom_code	;FD
        dw null_custom_code	;FE
        dw null_custom_code	;FF


;This table contains pointer for every level, points to code that will run AFTER vanilla level load code
custom_level_load_table:
	dw null_custom_code	;00
	dw null_custom_code	;01
	dw null_custom_code	;02
	dw null_custom_code	;03
	dw null_custom_code	;04
	dw null_custom_code	;05
	dw null_custom_code	;06
	dw null_custom_code	;07
	dw null_custom_code	;08
	dw null_custom_code	;09
	dw null_custom_code	;0A
	dw null_custom_code	;0B
	dw null_custom_code	;0C
	dw null_custom_code	;0D
	dw null_custom_code	;0E
	dw null_custom_code	;0F
	dw null_custom_code	;10
	dw null_custom_code	;11
	dw null_custom_code	;12
	dw null_custom_code	;13
	dw null_custom_code	;14
	dw null_custom_code	;15
	dw null_custom_code	;16
	dw null_custom_code	;17
	dw null_custom_code	;18
	dw null_custom_code	;19
	dw null_custom_code	;1A
	dw null_custom_code	;1B
	dw null_custom_code	;1C
	dw null_custom_code	;1D
	dw null_custom_code	;1E
	dw null_custom_code	;1F
	dw null_custom_code	;20
	dw null_custom_code	;21
	dw null_custom_code	;22
	dw null_custom_code	;23
	dw null_custom_code	;24
	dw null_custom_code	;25
	dw null_custom_code	;26
	dw null_custom_code	;27
	dw null_custom_code	;28
	dw null_custom_code	;29
	dw null_custom_code	;2A
	dw null_custom_code	;2B
	dw null_custom_code	;2C
	dw null_custom_code	;2D
	dw null_custom_code	;2E
	dw null_custom_code	;2F
	dw null_custom_code	;30
	dw null_custom_code	;31
	dw null_custom_code	;32
	dw null_custom_code	;33
	dw null_custom_code	;34
	dw null_custom_code	;35
	dw null_custom_code	;36
	dw null_custom_code	;37
	dw null_custom_code	;38
	dw null_custom_code	;39
	dw null_custom_code	;3A
	dw null_custom_code	;3B
	dw null_custom_code	;3C
	dw null_custom_code	;3D
	dw null_custom_code	;3E
	dw null_custom_code	;3F
	dw null_custom_code	;40
	dw null_custom_code	;41
	dw null_custom_code	;42
	dw null_custom_code	;43
	dw null_custom_code	;44
	dw null_custom_code	;45
	dw null_custom_code	;46
	dw null_custom_code	;47
	dw null_custom_code	;48
	dw null_custom_code	;49
	dw null_custom_code	;4A
	dw null_custom_code	;4B
	dw null_custom_code	;4C
	dw null_custom_code	;4D
	dw null_custom_code	;4E
	dw null_custom_code	;4F
	dw null_custom_code	;50
	dw null_custom_code	;51
	dw null_custom_code	;52
	dw null_custom_code	;53
	dw null_custom_code	;54
	dw null_custom_code	;55
	dw null_custom_code	;56
	dw null_custom_code	;57
	dw null_custom_code	;58
	dw null_custom_code	;59
	dw null_custom_code	;5A
	dw null_custom_code	;5B
	dw null_custom_code	;5C
	dw null_custom_code	;5D
	dw null_custom_code	;5E
	dw null_custom_code	;5F
	dw null_custom_code	;60
        dw null_custom_code	;61
        dw null_custom_code	;62
        dw null_custom_code	;63
        dw null_custom_code	;64
        dw null_custom_code	;65
        dw null_custom_code	;66
        dw null_custom_code	;67
        dw null_custom_code	;68
        dw null_custom_code	;69
        dw null_custom_code	;6A
        dw null_custom_code	;6B
        dw null_custom_code	;6C
        dw null_custom_code	;6D
        dw null_custom_code	;6E
        dw null_custom_code	;6F
	dw null_custom_code	;70
        dw null_custom_code	;71
        dw null_custom_code	;72
        dw null_custom_code	;73
        dw null_custom_code	;74
        dw null_custom_code	;75
        dw null_custom_code	;76
        dw null_custom_code	;77
        dw null_custom_code	;78
        dw null_custom_code	;79
        dw null_custom_code	;7A
        dw null_custom_code	;7B
        dw null_custom_code	;7C
        dw null_custom_code	;7D
        dw null_custom_code	;7E
        dw null_custom_code	;7F
	dw null_custom_code	;80
        dw null_custom_code	;81
        dw null_custom_code	;82
        dw null_custom_code	;83
        dw null_custom_code	;84
        dw null_custom_code	;85
        dw null_custom_code	;86
        dw null_custom_code	;87
        dw null_custom_code	;88
        dw null_custom_code	;89
        dw null_custom_code	;8A
        dw null_custom_code	;8B
        dw null_custom_code	;8C
        dw null_custom_code	;8D
        dw null_custom_code	;8E
        dw null_custom_code	;8F
	dw null_custom_code	;90
        dw null_custom_code	;91
        dw null_custom_code	;92
        dw null_custom_code	;93
        dw null_custom_code	;94
        dw null_custom_code	;95
        dw null_custom_code	;96
        dw null_custom_code	;97
        dw null_custom_code	;98
        dw null_custom_code	;99
        dw null_custom_code	;9A
        dw null_custom_code	;9B
        dw null_custom_code	;9C
        dw null_custom_code	;9D
        dw null_custom_code	;9E
        dw null_custom_code	;9F
	dw null_custom_code	;A0
        dw null_custom_code	;A1
        dw null_custom_code	;A2
        dw null_custom_code	;A3
        dw null_custom_code	;A4
        dw null_custom_code	;A5
        dw null_custom_code	;A6
        dw null_custom_code	;A7
        dw null_custom_code	;A8
        dw null_custom_code	;A9
        dw null_custom_code	;AA
        dw null_custom_code	;AB
        dw null_custom_code	;AC
        dw null_custom_code	;AD
        dw null_custom_code	;AE
        dw null_custom_code	;AF
	dw null_custom_code	;B0
        dw null_custom_code	;B1
        dw null_custom_code	;B2
        dw null_custom_code	;B3
        dw null_custom_code	;B4
        dw null_custom_code	;B5
        dw null_custom_code	;B6
        dw null_custom_code	;B7
        dw null_custom_code	;B8
        dw null_custom_code	;B9
        dw null_custom_code	;BA
        dw null_custom_code	;BB
        dw null_custom_code	;BC
        dw null_custom_code	;BD
        dw null_custom_code	;BE
        dw null_custom_code	;BF
	dw null_custom_code	;C0
        dw null_custom_code	;C1
        dw null_custom_code	;C2
        dw null_custom_code	;C3
        dw null_custom_code	;C4
        dw null_custom_code	;C5
        dw null_custom_code	;C6
        dw null_custom_code	;C7
        dw null_custom_code	;C8
        dw null_custom_code	;C9
        dw null_custom_code	;CA
        dw null_custom_code	;CB
        dw null_custom_code	;CC
        dw null_custom_code	;CD
        dw null_custom_code	;CE
        dw null_custom_code	;CF
	dw null_custom_code	;D0
        dw null_custom_code	;D1
        dw null_custom_code	;D2
        dw null_custom_code	;D3
        dw null_custom_code	;D4
        dw null_custom_code	;D5
        dw null_custom_code	;D6
        dw null_custom_code	;D7
        dw null_custom_code	;D8
        dw null_custom_code	;D9
        dw null_custom_code	;DA
        dw null_custom_code	;DB
        dw null_custom_code	;DC
        dw null_custom_code	;DD
        dw null_custom_code	;DE
        dw null_custom_code	;DF
	dw null_custom_code	;E0
        dw null_custom_code	;E1
        dw null_custom_code	;E2
        dw null_custom_code	;E3
        dw null_custom_code	;E4
        dw null_custom_code	;E5
        dw null_custom_code	;E6
        dw null_custom_code	;E7
        dw null_custom_code	;E8
        dw null_custom_code	;E9
        dw null_custom_code	;EA
        dw null_custom_code	;EB
        dw null_custom_code	;EC
        dw null_custom_code	;ED
        dw null_custom_code	;EE
        dw null_custom_code	;EF
	dw null_custom_code	;F0
        dw null_custom_code	;F1
        dw null_custom_code	;F2
        dw null_custom_code	;F3
        dw null_custom_code	;F4
        dw null_custom_code	;F5
        dw null_custom_code	;F6
        dw null_custom_code	;F7
        dw null_custom_code	;F8
        dw null_custom_code	;F9
        dw null_custom_code	;FA
        dw null_custom_code	;FB
        dw null_custom_code	;FC
        dw null_custom_code	;FD
        dw null_custom_code	;FE
        dw null_custom_code	;FF



custom_global_pre_nmi_pointer:
	dd null_custom_code

custom_global_post_nmi_pointer:
	dd null_custom_code

custom_global_post_logic_pointer:
	dd null_custom_code

custom_global_level_load_pointer:
	dd null_custom_code

custom_level_code: