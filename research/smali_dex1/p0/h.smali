.class public final synthetic Lp0/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lp0/j;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lp0/j;II)V
    .registers 4

    .line 1
    iput p3, p0, Lp0/h;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lp0/h;->c:Lp0/j;

    .line 4
    .line 5
    iput p2, p0, Lp0/h;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget v0, p0, Lp0/h;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lp0/h;->d:I

    .line 5
    .line 6
    iget-object v3, p0, Lp0/h;->c:Lp0/j;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_b6

    .line 9
    .line 10
    .line 11
    add-int/2addr v2, v1

    .line 12
    invoke-virtual {v3, v2}, Lp0/j;->f(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    sget-object v0, Lp0/j;->l:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v4, Lp0/j;->m:Lp0/j;

    .line 19
    .line 20
    if-eq v4, v3, :cond_17

    .line 21
    .line 22
    goto/16 :goto_b5

    .line 23
    .line 24
    :cond_17
    iget-object v4, v3, Lp0/j;->i:Landroid/widget/TextView;

    .line 25
    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    if-eqz v4, :cond_46

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_46

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x19

    .line 42
    .line 43
    new-array v3, v3, [B

    .line 44
    .line 45
    fill-array-data v3, :array_bc

    .line 46
    .line 47
    .line 48
    new-array v4, v5, [B

    .line 49
    .line 50
    fill-array-data v4, :array_ce

    .line 51
    .line 52
    .line 53
    invoke-static {v3, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_b5

    .line 71
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const/16 v6, 0x1d

    .line 77
    .line 78
    new-array v6, v6, [B

    .line 79
    .line 80
    fill-array-data v6, :array_d6

    .line 81
    .line 82
    .line 83
    new-array v7, v5, [B

    .line 84
    .line 85
    fill-array-data v7, :array_ea

    .line 86
    .line 87
    .line 88
    invoke-static {v6, v7, v4, v2}, Lcom/google/protobuf/q;->t([B[BLjava/lang/StringBuilder;I)V

    .line 89
    .line 90
    .line 91
    const/4 v6, 0x4

    .line 92
    new-array v6, v6, [B

    .line 93
    .line 94
    fill-array-data v6, :array_f2

    .line 95
    .line 96
    .line 97
    new-array v7, v5, [B

    .line 98
    .line 99
    fill-array-data v7, :array_f8

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v6, v3, Lp0/j;->g:Landroid/view/WindowManager;

    .line 110
    .line 111
    if-eqz v6, :cond_72

    .line 112
    .line 113
    move v6, v1

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    const/4 v6, 0x0

    .line 116
    :goto_73
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    iget-object v0, v3, Lp0/j;->g:Landroid/view/WindowManager;

    .line 127
    .line 128
    if-eqz v0, :cond_88

    .line 129
    .line 130
    iget-object v4, v3, Lp0/j;->i:Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v4, :cond_88

    .line 133
    .line 134
    invoke-static {v0, v4}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    :cond_88
    const/4 v0, 0x0

    .line 138
    iput-object v0, v3, Lp0/j;->i:Landroid/widget/TextView;

    .line 139
    .line 140
    iput-object v0, v3, Lp0/j;->h:Landroid/view/WindowManager$LayoutParams;

    .line 141
    .line 142
    iput-object v0, v3, Lp0/j;->g:Landroid/view/WindowManager;

    .line 143
    .line 144
    iget-object v0, v3, Lp0/j;->b:Lp0/e;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lp0/e;->e()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a2

    .line 154
    .line 155
    const/4 v0, 0x6

    .line 156
    if-ge v2, v0, :cond_a2

    .line 157
    .line 158
    add-int/2addr v2, v1

    .line 159
    invoke-virtual {v3, v2}, Lp0/j;->h(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_b5

    .line 163
    :cond_a2
    const/16 v0, 0x14

    .line 164
    .line 165
    new-array v0, v0, [B

    .line 166
    .line 167
    fill-array-data v0, :array_100

    .line 168
    .line 169
    .line 170
    new-array v1, v5, [B

    .line 171
    .line 172
    fill-array-data v1, :array_10e

    .line 173
    .line 174
    .line 175
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v3, v0}, Lp0/j;->d(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_b5
    return-void

    .line 183
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_bc
    .array-data 1
        0x28t
        0x73t
        0x2dt
        -0x4t
        0x47t
        0x35t
        -0x70t
        0xft
        0x26t
        0x71t
        0x3ct
        -0x11t
        0x48t
        0x3ct
        -0x74t
        0x4bt
        0x67t
        0x64t
        0x3ct
        -0x6t
        0x4et
        0x39t
        -0x67t
        0x5bt
        0x7at
    .end array-data

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
    nop

    .line 207
    :array_ce
    .array-data 1
        0x47t
        0x5t
        0x48t
        -0x72t
        0x2bt
        0x54t
        -0x17t
        0x2ft
    .end array-data

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    :array_d6
    .array-data 1
        -0x6at
        -0x4bt
        0x1at
        0x38t
        0x3bt
        0x71t
        0x2dt
        -0x22t
        -0x69t
        -0x54t
        0xbt
        0x6at
        0x36t
        0x64t
        0x20t
        -0x61t
        -0x66t
        -0x55t
        0x1at
        0x2et
        0x77t
        0x71t
        0x20t
        -0x76t
        -0x64t
        -0x52t
        0xft
        0x3et
        0x6at
    .end array-data

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    nop

    .line 235
    :array_ea
    .array-data 1
        -0x7t
        -0x3dt
        0x7ft
        0x4at
        0x57t
        0x10t
        0x54t
        -0x2t
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    :array_f2
    .array-data 1
        0x56t
        -0x2dt
        0x4ft
        0x5ft
    .end array-data

    :array_f8
    .array-data 1
        0x76t
        -0x5ct
        0x22t
        0x62t
        -0x65t
        -0x1et
        0x6at
        -0x7ft
    .end array-data

    :array_100
    .array-data 1
        0x57t
        0x67t
        -0x1et
        -0x7ct
        -0x17t
        0x15t
        -0x6bt
        -0x71t
        0x56t
        0x7et
        -0xdt
        -0x2at
        -0x1ct
        0x0t
        -0x68t
        -0x32t
        0x5bt
        0x79t
        -0x1et
        -0x6et
    .end array-data

    :array_10e
    .array-data 1
        0x38t
        0x11t
        -0x79t
        -0xat
        -0x7bt
        0x74t
        -0x14t
        -0x51t
    .end array-data
.end method
