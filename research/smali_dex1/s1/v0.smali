.class public final synthetic Ls1/v0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/example/navistart/home/WebLauncherActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/example/navistart/home/WebLauncherActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Ls1/v0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/v0;->c:Lcom/example/navistart/home/WebLauncherActivity;

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
    .registers 9

    .line 1
    iget v0, p0, Ls1/v0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ls1/v0;->c:Lcom/example/navistart/home/WebLauncherActivity;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_aa

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/example/navistart/home/WebLauncherActivity;->t()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v0, 0x32

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_b4

    .line 23
    .line 24
    .line 25
    new-array v2, v2, [B

    .line 26
    .line 27
    fill-array-data v2, :array_d2

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Ly5/k;->x(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_25
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/example/navistart/home/WebLauncherActivity;->J()Landroidx/core/graphics/Insets;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/example/navistart/home/WebLauncherActivity;->D(Landroidx/core/graphics/Insets;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 56
    .line 57
    and-int/lit8 v0, v0, 0x30

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    new-array v4, v3, [B

    .line 61
    .line 62
    fill-array-data v4, :array_da

    .line 63
    .line 64
    .line 65
    new-array v5, v2, [B

    .line 66
    .line 67
    fill-array-data v5, :array_e2

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const/16 v6, 0x9

    .line 80
    .line 81
    new-array v6, v6, [B

    .line 82
    .line 83
    fill-array-data v6, :array_ea

    .line 84
    .line 85
    .line 86
    new-array v7, v2, [B

    .line 87
    .line 88
    fill-array-data v7, :array_f4

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const/16 v6, 0x20

    .line 99
    .line 100
    if-ne v0, v6, :cond_75

    .line 101
    .line 102
    const/4 v0, 0x4

    .line 103
    new-array v0, v0, [B

    .line 104
    .line 105
    fill-array-data v0, :array_fc

    .line 106
    .line 107
    .line 108
    new-array v3, v2, [B

    .line 109
    .line 110
    fill-array-data v3, :array_102

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_83

    .line 118
    :cond_75
    new-array v0, v3, [B

    .line 119
    .line 120
    fill-array-data v0, :array_10a

    .line 121
    .line 122
    .line 123
    new-array v3, v2, [B

    .line 124
    .line 125
    fill-array-data v3, :array_112

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :goto_83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x2

    .line 136
    new-array v0, v0, [B

    .line 137
    .line 138
    fill-array-data v0, :array_11a

    .line 139
    .line 140
    .line 141
    new-array v2, v2, [B

    .line 142
    .line 143
    fill-array-data v2, :array_120

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v4, v0}, Lcom/example/navistart/home/WebLauncherActivity;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/example/navistart/home/WebLauncherActivity;->x()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_a3
    sget-object v0, Lcom/example/navistart/home/WebLauncherActivity;->l:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/example/navistart/home/WebLauncherActivity;->s()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_25
        :pswitch_f
    .end packed-switch

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_b4
    .array-data 1
        0x25t
        0x20t
        -0x6ft
        0x60t
        -0x4ft
        0x24t
        0x42t
        -0x10t
        0x24t
        0x36t
        -0x6ft
        0x67t
        -0x4ft
        0x25t
        0x43t
        -0x3ct
        -0x2bt
        0x65t
        -0x40t
        0x5t
        -0x2ct
        0x4dt
        0x2at
        -0x60t
        0x72t
        0x64t
        -0xft
        0x4t
        -0x20t
        -0x43t
        0x43t
        -0x34t
        0x25t
        0x1t
        -0x6ft
        0x61t
        -0x4ft
        0x23t
        0x42t
        -0x10t
        0x24t
        0x36t
        -0x70t
        0x56t
        -0x4ft
        0x22t
        0x43t
        -0x34t
        0x25t
        0xat
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_d2
    .array-data 1
        -0xbt
        -0x4ct
        0x41t
        -0x2bt
        0x61t
        -0x63t
        -0x6dt
        0x71t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_da
    .array-data 1
        -0x57t
        0x4bt
        -0x51t
        -0x19t
        -0x40t
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    nop

    .line 227
    :array_e2
    .array-data 1
        -0x23t
        0x23t
        -0x36t
        -0x76t
        -0x5bt
        0x3dt
        -0x30t
        0x30t
    .end array-data

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_ea
    .array-data 1
        -0x56t
        -0x48t
        -0x1ct
        0x9t
        -0x7ct
        -0x73t
        0x15t
        0x52t
        -0xdt
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    nop

    .line 245
    :array_f4
    .array-data 1
        -0x2ft
        -0x66t
        -0x77t
        0x66t
        -0x20t
        -0x18t
        0x37t
        0x68t
    .end array-data

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_fc
    .array-data 1
        0x52t
        -0x1t
        0x5ft
        0x48t
    .end array-data

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_102
    .array-data 1
        0x36t
        -0x62t
        0x2dt
        0x23t
        -0x59t
        0x49t
        -0x44t
        0x26t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_10a
    .array-data 1
        -0x75t
        -0x72t
        -0x46t
        -0xat
        0x49t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    nop

    .line 275
    :array_112
    .array-data 1
        -0x19t
        -0x19t
        -0x23t
        -0x62t
        0x3dt
        0x2et
        -0x18t
        0x1ct
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :array_11a
    .array-data 1
        0x5bt
        -0x39t
    .end array-data

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    nop

    .line 289
    :array_120
    .array-data 1
        0x79t
        -0x46t
        -0x1bt
        0x72t
        -0x5ft
        -0x2et
        0x33t
        -0x1bt
    .end array-data
.end method
