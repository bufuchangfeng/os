[bits 32]

section .text
extern idt_table
extern put_str
global __alltraps
global vector0
vector0:
  push 0
  push 0
  jmp __alltraps
global vector1
vector1:
  push 0
  push 1
  jmp __alltraps
global vector2
vector2:
  push 0
  push 2
  jmp __alltraps
global vector3
vector3:
  push 0
  push 3
  jmp __alltraps
global vector4
vector4:
  push 0
  push 4
  jmp __alltraps
global vector5
vector5:
  push 0
  push 5
  jmp __alltraps
global vector6
vector6:
  push 0
  push 6
  jmp __alltraps
global vector7
vector7:
  push 0
  push 7
  jmp __alltraps
global vector8
vector8:
  push 8
  jmp __alltraps
global vector9
vector9:
  push 9
  jmp __alltraps
global vector10
vector10:
  push 10
  jmp __alltraps
global vector11
vector11:
  push 11
  jmp __alltraps
global vector12
vector12:
  push 12
  jmp __alltraps
global vector13
vector13:
  push 13
  jmp __alltraps
global vector14
vector14:
  push 14
  jmp __alltraps
global vector15
vector15:
  push 0
  push 15
  jmp __alltraps
global vector16
vector16:
  push 0
  push 16
  jmp __alltraps
global vector17
vector17:
  push 17
  jmp __alltraps
global vector18
vector18:
  push 0
  push 18
  jmp __alltraps
global vector19
vector19:
  push 0
  push 19
  jmp __alltraps
global vector20
vector20:
  push 0
  push 20
  jmp __alltraps
global vector21
vector21:
  push 0
  push 21
  jmp __alltraps
global vector22
vector22:
  push 0
  push 22
  jmp __alltraps
global vector23
vector23:
  push 0
  push 23
  jmp __alltraps
global vector24
vector24:
  push 0
  push 24
  jmp __alltraps
global vector25
vector25:
  push 0
  push 25
  jmp __alltraps
global vector26
vector26:
  push 0
  push 26
  jmp __alltraps
global vector27
vector27:
  push 0
  push 27
  jmp __alltraps
global vector28
vector28:
  push 0
  push 28
  jmp __alltraps
global vector29
vector29:
  push 0
  push 29
  jmp __alltraps
global vector30
vector30:
  push 0
  push 30
  jmp __alltraps
global vector31
vector31:
  push 0
  push 31
  jmp __alltraps
global vector32
vector32:
  push 0
  push 32
  jmp __alltraps
global vector33
vector33:
  push 0
  push 33
  jmp __alltraps
global vector34
vector34:
  push 0
  push 34
  jmp __alltraps
global vector35
vector35:
  push 0
  push 35
  jmp __alltraps
global vector36
vector36:
  push 0
  push 36
  jmp __alltraps
global vector37
vector37:
  push 0
  push 37
  jmp __alltraps
global vector38
vector38:
  push 0
  push 38
  jmp __alltraps
global vector39
vector39:
  push 0
  push 39
  jmp __alltraps
global vector40
vector40:
  push 0
  push 40
  jmp __alltraps
global vector41
vector41:
  push 0
  push 41
  jmp __alltraps
global vector42
vector42:
  push 0
  push 42
  jmp __alltraps
global vector43
vector43:
  push 0
  push 43
  jmp __alltraps
global vector44
vector44:
  push 0
  push 44
  jmp __alltraps
global vector45
vector45:
  push 0
  push 45
  jmp __alltraps
global vector46
vector46:
  push 0
  push 46
  jmp __alltraps
global vector47
vector47:
  push 0
  push 47
  jmp __alltraps
global vector48
vector48:
  push 0
  push 48
  jmp __alltraps
global vector49
vector49:
  push 0
  push 49
  jmp __alltraps
global vector50
vector50:
  push 0
  push 50
  jmp __alltraps
global vector51
vector51:
  push 0
  push 51
  jmp __alltraps
global vector52
vector52:
  push 0
  push 52
  jmp __alltraps
global vector53
vector53:
  push 0
  push 53
  jmp __alltraps
global vector54
vector54:
  push 0
  push 54
  jmp __alltraps
global vector55
vector55:
  push 0
  push 55
  jmp __alltraps
global vector56
vector56:
  push 0
  push 56
  jmp __alltraps
global vector57
vector57:
  push 0
  push 57
  jmp __alltraps
global vector58
vector58:
  push 0
  push 58
  jmp __alltraps
global vector59
vector59:
  push 0
  push 59
  jmp __alltraps
global vector60
vector60:
  push 0
  push 60
  jmp __alltraps
global vector61
vector61:
  push 0
  push 61
  jmp __alltraps
global vector62
vector62:
  push 0
  push 62
  jmp __alltraps
global vector63
vector63:
  push 0
  push 63
  jmp __alltraps
global vector64
vector64:
  push 0
  push 64
  jmp __alltraps
global vector65
vector65:
  push 0
  push 65
  jmp __alltraps
global vector66
vector66:
  push 0
  push 66
  jmp __alltraps
global vector67
vector67:
  push 0
  push 67
  jmp __alltraps
global vector68
vector68:
  push 0
  push 68
  jmp __alltraps
global vector69
vector69:
  push 0
  push 69
  jmp __alltraps
global vector70
vector70:
  push 0
  push 70
  jmp __alltraps
global vector71
vector71:
  push 0
  push 71
  jmp __alltraps
global vector72
vector72:
  push 0
  push 72
  jmp __alltraps
global vector73
vector73:
  push 0
  push 73
  jmp __alltraps
global vector74
vector74:
  push 0
  push 74
  jmp __alltraps
global vector75
vector75:
  push 0
  push 75
  jmp __alltraps
global vector76
vector76:
  push 0
  push 76
  jmp __alltraps
global vector77
vector77:
  push 0
  push 77
  jmp __alltraps
global vector78
vector78:
  push 0
  push 78
  jmp __alltraps
global vector79
vector79:
  push 0
  push 79
  jmp __alltraps
global vector80
vector80:
  push 0
  push 80
  jmp __alltraps
global vector81
vector81:
  push 0
  push 81
  jmp __alltraps
global vector82
vector82:
  push 0
  push 82
  jmp __alltraps
global vector83
vector83:
  push 0
  push 83
  jmp __alltraps
global vector84
vector84:
  push 0
  push 84
  jmp __alltraps
global vector85
vector85:
  push 0
  push 85
  jmp __alltraps
global vector86
vector86:
  push 0
  push 86
  jmp __alltraps
global vector87
vector87:
  push 0
  push 87
  jmp __alltraps
global vector88
vector88:
  push 0
  push 88
  jmp __alltraps
global vector89
vector89:
  push 0
  push 89
  jmp __alltraps
global vector90
vector90:
  push 0
  push 90
  jmp __alltraps
global vector91
vector91:
  push 0
  push 91
  jmp __alltraps
global vector92
vector92:
  push 0
  push 92
  jmp __alltraps
global vector93
vector93:
  push 0
  push 93
  jmp __alltraps
global vector94
vector94:
  push 0
  push 94
  jmp __alltraps
global vector95
vector95:
  push 0
  push 95
  jmp __alltraps
global vector96
vector96:
  push 0
  push 96
  jmp __alltraps
global vector97
vector97:
  push 0
  push 97
  jmp __alltraps
global vector98
vector98:
  push 0
  push 98
  jmp __alltraps
global vector99
vector99:
  push 0
  push 99
  jmp __alltraps
global vector100
vector100:
  push 0
  push 100
  jmp __alltraps
global vector101
vector101:
  push 0
  push 101
  jmp __alltraps
global vector102
vector102:
  push 0
  push 102
  jmp __alltraps
global vector103
vector103:
  push 0
  push 103
  jmp __alltraps
global vector104
vector104:
  push 0
  push 104
  jmp __alltraps
global vector105
vector105:
  push 0
  push 105
  jmp __alltraps
global vector106
vector106:
  push 0
  push 106
  jmp __alltraps
global vector107
vector107:
  push 0
  push 107
  jmp __alltraps
global vector108
vector108:
  push 0
  push 108
  jmp __alltraps
global vector109
vector109:
  push 0
  push 109
  jmp __alltraps
global vector110
vector110:
  push 0
  push 110
  jmp __alltraps
global vector111
vector111:
  push 0
  push 111
  jmp __alltraps
global vector112
vector112:
  push 0
  push 112
  jmp __alltraps
global vector113
vector113:
  push 0
  push 113
  jmp __alltraps
global vector114
vector114:
  push 0
  push 114
  jmp __alltraps
global vector115
vector115:
  push 0
  push 115
  jmp __alltraps
global vector116
vector116:
  push 0
  push 116
  jmp __alltraps
global vector117
vector117:
  push 0
  push 117
  jmp __alltraps
global vector118
vector118:
  push 0
  push 118
  jmp __alltraps
global vector119
vector119:
  push 0
  push 119
  jmp __alltraps
global vector120
vector120:
  push 0
  push 120
  jmp __alltraps
global vector121
vector121:
  push 0
  push 121
  jmp __alltraps
global vector122
vector122:
  push 0
  push 122
  jmp __alltraps
global vector123
vector123:
  push 0
  push 123
  jmp __alltraps
global vector124
vector124:
  push 0
  push 124
  jmp __alltraps
global vector125
vector125:
  push 0
  push 125
  jmp __alltraps
global vector126
vector126:
  push 0
  push 126
  jmp __alltraps
global vector127
vector127:
  push 0
  push 127
  jmp __alltraps
global vector128
vector128:
  push 0
  push 128
  jmp __alltraps
global vector129
vector129:
  push 0
  push 129
  jmp __alltraps
global vector130
vector130:
  push 0
  push 130
  jmp __alltraps
global vector131
vector131:
  push 0
  push 131
  jmp __alltraps
global vector132
vector132:
  push 0
  push 132
  jmp __alltraps
global vector133
vector133:
  push 0
  push 133
  jmp __alltraps
global vector134
vector134:
  push 0
  push 134
  jmp __alltraps
global vector135
vector135:
  push 0
  push 135
  jmp __alltraps
global vector136
vector136:
  push 0
  push 136
  jmp __alltraps
global vector137
vector137:
  push 0
  push 137
  jmp __alltraps
global vector138
vector138:
  push 0
  push 138
  jmp __alltraps
global vector139
vector139:
  push 0
  push 139
  jmp __alltraps
global vector140
vector140:
  push 0
  push 140
  jmp __alltraps
global vector141
vector141:
  push 0
  push 141
  jmp __alltraps
global vector142
vector142:
  push 0
  push 142
  jmp __alltraps
global vector143
vector143:
  push 0
  push 143
  jmp __alltraps
global vector144
vector144:
  push 0
  push 144
  jmp __alltraps
global vector145
vector145:
  push 0
  push 145
  jmp __alltraps
global vector146
vector146:
  push 0
  push 146
  jmp __alltraps
global vector147
vector147:
  push 0
  push 147
  jmp __alltraps
global vector148
vector148:
  push 0
  push 148
  jmp __alltraps
global vector149
vector149:
  push 0
  push 149
  jmp __alltraps
global vector150
vector150:
  push 0
  push 150
  jmp __alltraps
global vector151
vector151:
  push 0
  push 151
  jmp __alltraps
global vector152
vector152:
  push 0
  push 152
  jmp __alltraps
global vector153
vector153:
  push 0
  push 153
  jmp __alltraps
global vector154
vector154:
  push 0
  push 154
  jmp __alltraps
global vector155
vector155:
  push 0
  push 155
  jmp __alltraps
global vector156
vector156:
  push 0
  push 156
  jmp __alltraps
global vector157
vector157:
  push 0
  push 157
  jmp __alltraps
global vector158
vector158:
  push 0
  push 158
  jmp __alltraps
global vector159
vector159:
  push 0
  push 159
  jmp __alltraps
global vector160
vector160:
  push 0
  push 160
  jmp __alltraps
global vector161
vector161:
  push 0
  push 161
  jmp __alltraps
global vector162
vector162:
  push 0
  push 162
  jmp __alltraps
global vector163
vector163:
  push 0
  push 163
  jmp __alltraps
global vector164
vector164:
  push 0
  push 164
  jmp __alltraps
global vector165
vector165:
  push 0
  push 165
  jmp __alltraps
global vector166
vector166:
  push 0
  push 166
  jmp __alltraps
global vector167
vector167:
  push 0
  push 167
  jmp __alltraps
global vector168
vector168:
  push 0
  push 168
  jmp __alltraps
global vector169
vector169:
  push 0
  push 169
  jmp __alltraps
global vector170
vector170:
  push 0
  push 170
  jmp __alltraps
global vector171
vector171:
  push 0
  push 171
  jmp __alltraps
global vector172
vector172:
  push 0
  push 172
  jmp __alltraps
global vector173
vector173:
  push 0
  push 173
  jmp __alltraps
global vector174
vector174:
  push 0
  push 174
  jmp __alltraps
global vector175
vector175:
  push 0
  push 175
  jmp __alltraps
global vector176
vector176:
  push 0
  push 176
  jmp __alltraps
global vector177
vector177:
  push 0
  push 177
  jmp __alltraps
global vector178
vector178:
  push 0
  push 178
  jmp __alltraps
global vector179
vector179:
  push 0
  push 179
  jmp __alltraps
global vector180
vector180:
  push 0
  push 180
  jmp __alltraps
global vector181
vector181:
  push 0
  push 181
  jmp __alltraps
global vector182
vector182:
  push 0
  push 182
  jmp __alltraps
global vector183
vector183:
  push 0
  push 183
  jmp __alltraps
global vector184
vector184:
  push 0
  push 184
  jmp __alltraps
global vector185
vector185:
  push 0
  push 185
  jmp __alltraps
global vector186
vector186:
  push 0
  push 186
  jmp __alltraps
global vector187
vector187:
  push 0
  push 187
  jmp __alltraps
global vector188
vector188:
  push 0
  push 188
  jmp __alltraps
global vector189
vector189:
  push 0
  push 189
  jmp __alltraps
global vector190
vector190:
  push 0
  push 190
  jmp __alltraps
global vector191
vector191:
  push 0
  push 191
  jmp __alltraps
global vector192
vector192:
  push 0
  push 192
  jmp __alltraps
global vector193
vector193:
  push 0
  push 193
  jmp __alltraps
global vector194
vector194:
  push 0
  push 194
  jmp __alltraps
global vector195
vector195:
  push 0
  push 195
  jmp __alltraps
global vector196
vector196:
  push 0
  push 196
  jmp __alltraps
global vector197
vector197:
  push 0
  push 197
  jmp __alltraps
global vector198
vector198:
  push 0
  push 198
  jmp __alltraps
global vector199
vector199:
  push 0
  push 199
  jmp __alltraps
global vector200
vector200:
  push 0
  push 200
  jmp __alltraps
global vector201
vector201:
  push 0
  push 201
  jmp __alltraps
global vector202
vector202:
  push 0
  push 202
  jmp __alltraps
global vector203
vector203:
  push 0
  push 203
  jmp __alltraps
global vector204
vector204:
  push 0
  push 204
  jmp __alltraps
global vector205
vector205:
  push 0
  push 205
  jmp __alltraps
global vector206
vector206:
  push 0
  push 206
  jmp __alltraps
global vector207
vector207:
  push 0
  push 207
  jmp __alltraps
global vector208
vector208:
  push 0
  push 208
  jmp __alltraps
global vector209
vector209:
  push 0
  push 209
  jmp __alltraps
global vector210
vector210:
  push 0
  push 210
  jmp __alltraps
global vector211
vector211:
  push 0
  push 211
  jmp __alltraps
global vector212
vector212:
  push 0
  push 212
  jmp __alltraps
global vector213
vector213:
  push 0
  push 213
  jmp __alltraps
global vector214
vector214:
  push 0
  push 214
  jmp __alltraps
global vector215
vector215:
  push 0
  push 215
  jmp __alltraps
global vector216
vector216:
  push 0
  push 216
  jmp __alltraps
global vector217
vector217:
  push 0
  push 217
  jmp __alltraps
global vector218
vector218:
  push 0
  push 218
  jmp __alltraps
global vector219
vector219:
  push 0
  push 219
  jmp __alltraps
global vector220
vector220:
  push 0
  push 220
  jmp __alltraps
global vector221
vector221:
  push 0
  push 221
  jmp __alltraps
global vector222
vector222:
  push 0
  push 222
  jmp __alltraps
global vector223
vector223:
  push 0
  push 223
  jmp __alltraps
global vector224
vector224:
  push 0
  push 224
  jmp __alltraps
global vector225
vector225:
  push 0
  push 225
  jmp __alltraps
global vector226
vector226:
  push 0
  push 226
  jmp __alltraps
global vector227
vector227:
  push 0
  push 227
  jmp __alltraps
global vector228
vector228:
  push 0
  push 228
  jmp __alltraps
global vector229
vector229:
  push 0
  push 229
  jmp __alltraps
global vector230
vector230:
  push 0
  push 230
  jmp __alltraps
global vector231
vector231:
  push 0
  push 231
  jmp __alltraps
global vector232
vector232:
  push 0
  push 232
  jmp __alltraps
global vector233
vector233:
  push 0
  push 233
  jmp __alltraps
global vector234
vector234:
  push 0
  push 234
  jmp __alltraps
global vector235
vector235:
  push 0
  push 235
  jmp __alltraps
global vector236
vector236:
  push 0
  push 236
  jmp __alltraps
global vector237
vector237:
  push 0
  push 237
  jmp __alltraps
global vector238
vector238:
  push 0
  push 238
  jmp __alltraps
global vector239
vector239:
  push 0
  push 239
  jmp __alltraps
global vector240
vector240:
  push 0
  push 240
  jmp __alltraps
global vector241
vector241:
  push 0
  push 241
  jmp __alltraps
global vector242
vector242:
  push 0
  push 242
  jmp __alltraps
global vector243
vector243:
  push 0
  push 243
  jmp __alltraps
global vector244
vector244:
  push 0
  push 244
  jmp __alltraps
global vector245
vector245:
  push 0
  push 245
  jmp __alltraps
global vector246
vector246:
  push 0
  push 246
  jmp __alltraps
global vector247
vector247:
  push 0
  push 247
  jmp __alltraps
global vector248
vector248:
  push 0
  push 248
  jmp __alltraps
global vector249
vector249:
  push 0
  push 249
  jmp __alltraps
global vector250
vector250:
  push 0
  push 250
  jmp __alltraps
global vector251
vector251:
  push 0
  push 251
  jmp __alltraps
global vector252
vector252:
  push 0
  push 252
  jmp __alltraps
global vector253
vector253:
  push 0
  push 253
  jmp __alltraps
global vector254
vector254:
  push 0
  push 254
  jmp __alltraps
global vector255
vector255:
  push 0
  push 255
  jmp __alltraps

__alltraps:
	; push msg
	; call put_str
	; add esp, 4

	push ds
	push es
	push fs
	push gs
	pushad
	mov ebp, esp
	
	mov ebp, [ebp + 48]
	push ebp
	call [idt_table + ebp * 4]
	add esp, 4

	popad
	pop gs
	pop fs
	pop es
	pop ds

	mov al, 0x20
	out 0xa0, al
	out 0x20, al

	add esp, 8
	iret


section .data
msg	db	"interrupt!!!", 0xa, 0
global vectors
vectors:
  dd vector0
  dd vector1
  dd vector2
  dd vector3
  dd vector4
  dd vector5
  dd vector6
  dd vector7
  dd vector8
  dd vector9
  dd vector10
  dd vector11
  dd vector12
  dd vector13
  dd vector14
  dd vector15
  dd vector16
  dd vector17
  dd vector18
  dd vector19
  dd vector20
  dd vector21
  dd vector22
  dd vector23
  dd vector24
  dd vector25
  dd vector26
  dd vector27
  dd vector28
  dd vector29
  dd vector30
  dd vector31
  dd vector32
  dd vector33
  dd vector34
  dd vector35
  dd vector36
  dd vector37
  dd vector38
  dd vector39
  dd vector40
  dd vector41
  dd vector42
  dd vector43
  dd vector44
  dd vector45
  dd vector46
  dd vector47
  dd vector48
  dd vector49
  dd vector50
  dd vector51
  dd vector52
  dd vector53
  dd vector54
  dd vector55
  dd vector56
  dd vector57
  dd vector58
  dd vector59
  dd vector60
  dd vector61
  dd vector62
  dd vector63
  dd vector64
  dd vector65
  dd vector66
  dd vector67
  dd vector68
  dd vector69
  dd vector70
  dd vector71
  dd vector72
  dd vector73
  dd vector74
  dd vector75
  dd vector76
  dd vector77
  dd vector78
  dd vector79
  dd vector80
  dd vector81
  dd vector82
  dd vector83
  dd vector84
  dd vector85
  dd vector86
  dd vector87
  dd vector88
  dd vector89
  dd vector90
  dd vector91
  dd vector92
  dd vector93
  dd vector94
  dd vector95
  dd vector96
  dd vector97
  dd vector98
  dd vector99
  dd vector100
  dd vector101
  dd vector102
  dd vector103
  dd vector104
  dd vector105
  dd vector106
  dd vector107
  dd vector108
  dd vector109
  dd vector110
  dd vector111
  dd vector112
  dd vector113
  dd vector114
  dd vector115
  dd vector116
  dd vector117
  dd vector118
  dd vector119
  dd vector120
  dd vector121
  dd vector122
  dd vector123
  dd vector124
  dd vector125
  dd vector126
  dd vector127
  dd vector128
  dd vector129
  dd vector130
  dd vector131
  dd vector132
  dd vector133
  dd vector134
  dd vector135
  dd vector136
  dd vector137
  dd vector138
  dd vector139
  dd vector140
  dd vector141
  dd vector142
  dd vector143
  dd vector144
  dd vector145
  dd vector146
  dd vector147
  dd vector148
  dd vector149
  dd vector150
  dd vector151
  dd vector152
  dd vector153
  dd vector154
  dd vector155
  dd vector156
  dd vector157
  dd vector158
  dd vector159
  dd vector160
  dd vector161
  dd vector162
  dd vector163
  dd vector164
  dd vector165
  dd vector166
  dd vector167
  dd vector168
  dd vector169
  dd vector170
  dd vector171
  dd vector172
  dd vector173
  dd vector174
  dd vector175
  dd vector176
  dd vector177
  dd vector178
  dd vector179
  dd vector180
  dd vector181
  dd vector182
  dd vector183
  dd vector184
  dd vector185
  dd vector186
  dd vector187
  dd vector188
  dd vector189
  dd vector190
  dd vector191
  dd vector192
  dd vector193
  dd vector194
  dd vector195
  dd vector196
  dd vector197
  dd vector198
  dd vector199
  dd vector200
  dd vector201
  dd vector202
  dd vector203
  dd vector204
  dd vector205
  dd vector206
  dd vector207
  dd vector208
  dd vector209
  dd vector210
  dd vector211
  dd vector212
  dd vector213
  dd vector214
  dd vector215
  dd vector216
  dd vector217
  dd vector218
  dd vector219
  dd vector220
  dd vector221
  dd vector222
  dd vector223
  dd vector224
  dd vector225
  dd vector226
  dd vector227
  dd vector228
  dd vector229
  dd vector230
  dd vector231
  dd vector232
  dd vector233
  dd vector234
  dd vector235
  dd vector236
  dd vector237
  dd vector238
  dd vector239
  dd vector240
  dd vector241
  dd vector242
  dd vector243
  dd vector244
  dd vector245
  dd vector246
  dd vector247
  dd vector248
  dd vector249
  dd vector250
  dd vector251
  dd vector252
  dd vector253
  dd vector254
  dd vector255
