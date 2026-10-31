.class public final synthetic Le0/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/example/navistart/BlackActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/BlackActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Le0/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/l;->b:Lcom/example/navistart/BlackActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget v0, p0, Le0/l;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Le0/l;->b:Lcom/example/navistart/BlackActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_f8

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/location/Location;

    .line 11
    .line 12
    if-eqz p1, :cond_25

    .line 13
    .line 14
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 15
    .line 16
    if-eqz v0, :cond_12

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_12
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    and-int/2addr v0, v1

    .line 28
    if-eqz v0, :cond_27

    .line 29
    .line 30
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 31
    .line 32
    iget-object v0, v0, Lb1/h;->e:Lb1/r;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lb1/r;->i(Landroid/location/Location;)V

    .line 35
    .line 36
    .line 37
    goto :goto_27

    .line 38
    :cond_25
    sget p1, Lcom/example/navistart/BlackActivity;->g:I

    .line 39
    .line 40
    :cond_27
    :goto_27
    return-void

    .line 41
    :pswitch_28
    check-cast p1, Ls0/a;

    .line 42
    .line 43
    if-eqz p1, :cond_42

    .line 44
    .line 45
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 46
    .line 47
    if-eqz v0, :cond_31

    .line 48
    .line 49
    move v1, v2

    .line 50
    :cond_31
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    and-int/2addr v0, v1

    .line 59
    if-eqz v0, :cond_44

    .line 60
    .line 61
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lb1/h;->k(Ls0/a;)V

    .line 64
    .line 65
    .line 66
    goto :goto_44

    .line 67
    :cond_42
    sget p1, Lcom/example/navistart/BlackActivity;->g:I

    .line 68
    .line 69
    :cond_44
    :goto_44
    return-void

    .line 70
    :pswitch_45
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p1, :cond_5f

    .line 73
    .line 74
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 75
    .line 76
    if-eqz v0, :cond_4e

    .line 77
    .line 78
    move v1, v2

    .line 79
    :cond_4e
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    and-int/2addr v0, v1

    .line 88
    if-eqz v0, :cond_61

    .line 89
    .line 90
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lb1/h;->f(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    sget p1, Lcom/example/navistart/BlackActivity;->g:I

    .line 97
    .line 98
    :cond_61
    :goto_61
    return-void

    .line 99
    :pswitch_62
    check-cast p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 100
    .line 101
    if-eqz p1, :cond_7c

    .line 102
    .line 103
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 104
    .line 105
    if-eqz v0, :cond_6b

    .line 106
    .line 107
    move v1, v2

    .line 108
    :cond_6b
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    and-int/2addr v0, v1

    .line 117
    if-eqz v0, :cond_7e

    .line 118
    .line 119
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lb1/h;->o(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 122
    .line 123
    .line 124
    goto :goto_7e

    .line 125
    :cond_7c
    sget p1, Lcom/example/navistart/BlackActivity;->g:I

    .line 126
    .line 127
    :cond_7e
    :goto_7e
    return-void

    .line 128
    :pswitch_7f
    check-cast p1, Lk7/b;

    .line 129
    .line 130
    sget v0, Lcom/example/navistart/BlackActivity;->g:I

    .line 131
    .line 132
    if-eqz p1, :cond_b7

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v4, p1, Lk7/b;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const/4 v4, 0x2

    .line 145
    new-array v4, v4, [B

    .line 146
    .line 147
    fill-array-data v4, :array_108

    .line 148
    .line 149
    .line 150
    const/16 v5, 0x8

    .line 151
    .line 152
    new-array v5, v5, [B

    .line 153
    .line 154
    fill-array-data v5, :array_10e

    .line 155
    .line 156
    .line 157
    invoke-static {v4, v5, v0}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget p1, p1, Lk7/b;->d:I

    .line 162
    .line 163
    iget-object v4, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 164
    .line 165
    if-eqz v4, :cond_a7

    .line 166
    .line 167
    move v1, v2

    .line 168
    :cond_a7
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    and-int/2addr v1, v2

    .line 177
    if-eqz v1, :cond_b7

    .line 178
    .line 179
    iget-object v1, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 180
    .line 181
    invoke-virtual {v1, p1, v0}, Lb1/h;->g(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_b7
    return-void

    .line 185
    :pswitch_b8
    check-cast p1, Ljava/lang/Integer;

    .line 186
    .line 187
    sget v0, Lcom/example/navistart/BlackActivity;->g:I

    .line 188
    .line 189
    if-eqz p1, :cond_d7

    .line 190
    .line 191
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 196
    .line 197
    if-eqz v0, :cond_c7

    .line 198
    .line 199
    move v1, v2

    .line 200
    :cond_c7
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    and-int/2addr v0, v1

    .line 209
    if-eqz v0, :cond_d7

    .line 210
    .line 211
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Lb1/h;->l(I)V

    .line 214
    .line 215
    .line 216
    :cond_d7
    return-void

    .line 217
    :pswitch_d8
    check-cast p1, Ljava/lang/Integer;

    .line 218
    .line 219
    sget v0, Lcom/example/navistart/BlackActivity;->g:I

    .line 220
    .line 221
    if-eqz p1, :cond_f7

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 228
    .line 229
    if-eqz v0, :cond_e7

    .line 230
    .line 231
    move v1, v2

    .line 232
    :cond_e7
    invoke-static {}, Lcom/example/navistart/BlackActivity;->s()Ljava/lang/Boolean;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    and-int/2addr v0, v1

    .line 241
    if-eqz v0, :cond_f7

    .line 242
    .line 243
    iget-object v0, v3, Lcom/example/navistart/BlackActivity;->f:Lb1/h;

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Lb1/h;->d(I)V

    .line 246
    .line 247
    .line 248
    :cond_f7
    return-void

    .line 249
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_b8
        :pswitch_7f
        :pswitch_62
        :pswitch_45
        :pswitch_28
    .end packed-switch

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_108
    .array-data 1
        0x71t
        -0x2at
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    nop

    .line 271
    :array_10e
    .array-data 1
        -0x4dt
        0x66t
        0x3ft
        -0x2dt
        0x2bt
        0x48t
        0x7at
        0x6at
    .end array-data
.end method
