.class public final synthetic Le0/a2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Le0/a2;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le0/a2;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Le0/a2;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x5

    .line 8
    iget-object v5, p0, Le0/a2;->c:Ljava/lang/String;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/example/navistart/VJCT;->h:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    sget-object v0, Lcom/example/navistart/VJCT;->i:Landroid/widget/Button;

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 26
    .line 27
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static {v5}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    new-array v4, v4, [B

    .line 43
    .line 44
    fill-array-data v4, :array_0

    .line 45
    .line 46
    .line 47
    new-array v3, v3, [B

    .line 48
    .line 49
    fill-array-data v3, :array_1

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget v3, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 60
    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v6, v3, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/2addr v2, v1

    .line 73
    invoke-interface {v0, v2, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_2
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 78
    .line 79
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v5}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    new-array v4, v4, [B

    .line 95
    .line 96
    fill-array-data v4, :array_2

    .line 97
    .line 98
    .line 99
    new-array v3, v3, [B

    .line 100
    .line 101
    fill-array-data v3, :array_3

    .line 102
    .line 103
    .line 104
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    sget v3, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v6, v3, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    add-int/2addr v3, v1

    .line 125
    invoke-interface {v0, v3, v2}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_3
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 130
    .line 131
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v5}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    new-array v4, v4, [B

    .line 147
    .line 148
    fill-array-data v4, :array_4

    .line 149
    .line 150
    .line 151
    new-array v3, v3, [B

    .line 152
    .line 153
    fill-array-data v3, :array_5

    .line 154
    .line 155
    .line 156
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    sget v3, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 164
    .line 165
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v6, v3, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    add-int/2addr v2, v1

    .line 177
    invoke-interface {v0, v2, v1}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvent(II)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_4
    sget-object v0, Lcom/example/navistart/MyCarReceiver;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 182
    .line 183
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v5}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    new-array v4, v4, [B

    .line 199
    .line 200
    fill-array-data v4, :array_6

    .line 201
    .line 202
    .line 203
    new-array v3, v3, [B

    .line 204
    .line 205
    fill-array-data v3, :array_7

    .line 206
    .line 207
    .line 208
    invoke-static {v4, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    sget v3, Lcom/example/navistart/MyCarReceiver;->o:I

    .line 216
    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v6, v3, v2}, Lu0/a;->loadInt(Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    add-int/2addr v3, v1

    .line 229
    invoke-interface {v0, v3, v2}, Lcom/example/navistart/cores/CarCmdProxy;->carsetheat(II)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_0
    .array-data 1
        -0x78t
        -0x3ft
        0x5bt
        -0x55t
        -0x80t
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    nop

    .line 255
    :array_1
    .array-data 1
        -0x29t
        -0x74t
        0x14t
        -0x8t
        -0x38t
        -0x18t
        -0x3t
        -0x37t
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :array_2
    .array-data 1
        -0x1at
        -0x7ct
        -0x64t
        0x3ft
        -0x11t
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    nop

    .line 271
    :array_3
    .array-data 1
        -0x47t
        -0x37t
        -0x2dt
        0x6ct
        -0x59t
        -0x79t
        0x76t
        0x56t
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_4
    .array-data 1
        -0x64t
        0x1dt
        0x70t
        0x19t
        -0x17t
    .end array-data

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    nop

    .line 287
    :array_5
    .array-data 1
        -0x3dt
        0x50t
        0x3ft
        0x4at
        -0x5ft
        0x21t
        0x50t
        -0xdt
    .end array-data

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    :array_6
    .array-data 1
        -0x44t
        0x1at
        -0x5bt
        -0x34t
        0x9t
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    nop

    .line 303
    :array_7
    .array-data 1
        -0x1dt
        0x57t
        -0x16t
        -0x61t
        0x41t
        0x76t
        -0x6ft
        0x32t
    .end array-data
.end method
