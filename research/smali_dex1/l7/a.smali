.class public final synthetic Ll7/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ld2/h;


# direct methods
.method public synthetic constructor <init>(Ld2/h;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll7/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ll7/a;->c:Ld2/h;

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
    .registers 11

    .line 1
    iget v0, p0, Ll7/a;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ll7/a;->c:Ld2/h;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_dc

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    new-array v2, v2, [B

    .line 15
    .line 16
    fill-array-data v2, :array_e4

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    new-array v4, v3, [B

    .line 22
    .line 23
    fill-array-data v4, :array_ea

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v2, v1, Ld2/h;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Lcom/wireguard/android/backend/GoBackend;

    .line 36
    .line 37
    iget-object v4, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lr5/c;

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Lcom/wireguard/android/backend/GoBackend;->b(Lr5/c;)Lcom/bumptech/glide/f;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    move-wide v6, v4

    .line 58
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_49

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    check-cast v8, Ld7/c;

    .line 69
    .line 70
    iget-wide v8, v8, Ld7/c;->a:J

    .line 71
    .line 72
    add-long/2addr v6, v8

    .line 73
    goto :goto_39

    .line 74
    :cond_49
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x5

    .line 78
    new-array v2, v2, [B

    .line 79
    .line 80
    fill-array-data v2, :array_f2

    .line 81
    .line 82
    .line 83
    new-array v3, v3, [B

    .line 84
    .line 85
    fill-array-data v3, :array_fa

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v2, v1, Ld2/h;->d:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lcom/wireguard/android/backend/GoBackend;

    .line 98
    .line 99
    iget-object v1, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lr5/c;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lcom/wireguard/android/backend/GoBackend;->b(Lr5/c;)Lcom/bumptech/glide/f;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget-object v1, v1, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_84

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ld7/c;

    .line 128
    .line 129
    iget-wide v2, v2, Ld7/c;->b:J

    .line 130
    .line 131
    add-long/2addr v4, v2

    .line 132
    goto :goto_74

    .line 133
    :cond_84
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/example/navistart/VJCT;->u(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_8f
    :try_start_8f
    iget-object v0, v1, Ld2/h;->d:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lcom/wireguard/android/backend/GoBackend;

    .line 147
    .line 148
    if-eqz v0, :cond_a2

    .line 149
    .line 150
    iget-object v2, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v2, Lr5/c;

    .line 153
    .line 154
    iget-object v3, v1, Ld2/h;->e:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v3, Lf7/c;

    .line 157
    .line 158
    const/4 v4, 0x2

    .line 159
    invoke-virtual {v0, v4, v3, v2}, Lcom/wireguard/android/backend/GoBackend;->c(ILf7/c;Lr5/c;)V

    .line 160
    .line 161
    .line 162
    goto :goto_b8

    .line 163
    :cond_a2
    invoke-virtual {v1}, Ld2/h;->q()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a5} :catch_a6

    .line 164
    .line 165
    .line 166
    goto :goto_b8

    .line 167
    :catch_a6
    iget-object v0, v1, Ld2/h;->c:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v0, Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const v1, 0x7f1304dc

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/example/navistart/VJCT;->u(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_b8
    return-void

    .line 186
    :pswitch_b9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    :try_start_bc
    iget-object v0, v1, Ld2/h;->d:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/wireguard/android/backend/GoBackend;

    .line 192
    .line 193
    if-eqz v0, :cond_d3

    .line 194
    .line 195
    iget-object v2, v1, Ld2/h;->e:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v2, Lf7/c;

    .line 198
    .line 199
    if-eqz v2, :cond_d3

    .line 200
    .line 201
    iget-object v1, v1, Ld2/h;->f:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v1, Lr5/c;

    .line 204
    .line 205
    const/4 v3, 0x3

    .line 206
    invoke-virtual {v0, v3, v2, v1}, Lcom/wireguard/android/backend/GoBackend;->c(ILf7/c;Lr5/c;)V

    .line 207
    .line 208
    .line 209
    goto :goto_da

    .line 210
    :catch_d1
    move-exception v0

    .line 211
    goto :goto_d7

    .line 212
    :cond_d3
    invoke-virtual {v1}, Ld2/h;->q()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d6} :catch_d1

    .line 213
    .line 214
    .line 215
    goto :goto_da

    .line 216
    :goto_d7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    :goto_da
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_8f
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :array_e4
    .array-data 1
        -0x2ct
        0x5ct
        0x46t
        -0x71t
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :array_ea
    .array-data 1
        -0x7at
        0x24t
        0x7ct
        -0x51t
        -0x25t
        -0x72t
        0x3et
        0x1bt
    .end array-data

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_f2
    .array-data 1
        -0x80t
        -0x1et
        -0x19t
        0x14t
        0x41t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    nop

    .line 251
    :array_fa
    .array-data 1
        -0x60t
        -0x4at
        -0x61t
        0x2et
        0x61t
        -0x54t
        -0x7at
        0x55t
    .end array-data
.end method
