.class public final synthetic Lm0/d1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lm0/e1;Lm0/h1;II)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lm0/d1;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm0/d1;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lm0/d1;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lm0/d1;->c:I

    .line 12
    .line 13
    iput p4, p0, Lm0/d1;->d:I

    .line 14
    .line 15
    return-void
.end method

.method public synthetic constructor <init>(Lw0/i0;IILjava/util/ArrayList;)V
    .registers 6

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lm0/d1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/d1;->e:Ljava/lang/Object;

    iput p2, p0, Lm0/d1;->c:I

    iput p3, p0, Lm0/d1;->d:I

    iput-object p4, p0, Lm0/d1;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 1
    iget v0, p0, Lm0/d1;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_dc

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm0/d1;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lw0/i0;

    .line 11
    .line 12
    iget v3, p0, Lm0/d1;->c:I

    .line 13
    .line 14
    iget v4, p0, Lm0/d1;->d:I

    .line 15
    .line 16
    iget-object v5, p0, Lm0/d1;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v6, v0, Lw0/i0;->c:Lw0/l0;

    .line 21
    .line 22
    invoke-virtual {v6, v3, v4}, Lw0/l0;->y(II)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_ac

    .line 27
    .line 28
    iget-object v6, v0, Lw0/i0;->c:Lw0/l0;

    .line 29
    .line 30
    iget-object v7, v6, Lw0/l0;->s:Lw0/w0;

    .line 31
    .line 32
    if-nez v7, :cond_ac

    .line 33
    .line 34
    iget-boolean v7, v6, Lw0/l0;->r:Z

    .line 35
    .line 36
    if-nez v7, :cond_27

    .line 37
    .line 38
    goto/16 :goto_ac

    .line 39
    .line 40
    :cond_27
    invoke-virtual {v6}, Lw0/l0;->j0()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_a5

    .line 45
    .line 46
    iget-object v6, v0, Lw0/i0;->c:Lw0/l0;

    .line 47
    .line 48
    monitor-enter v6

    .line 49
    :try_start_30
    iget-object v7, v6, Lw0/l0;->l:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    :cond_36
    :goto_36
    if-ge v1, v8, :cond_68

    .line 56
    .line 57
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    check-cast v9, Lcom/example/navistart/cores/BTProxy$Contact;

    .line 64
    .line 65
    if-eqz v9, :cond_36

    .line 66
    .line 67
    iget-object v10, v9, Lcom/example/navistart/cores/BTProxy$Contact;->bluetoothAddress:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v10, :cond_36

    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    if-eqz v10, :cond_4d

    .line 76
    .line 77
    goto :goto_36

    .line 78
    :cond_4d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-nez v10, :cond_5f

    .line 83
    .line 84
    iget-object v10, v9, Lcom/example/navistart/cores/BTProxy$Contact;->bluetoothAddress:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v7
    :try_end_59
    .catchall {:try_start_30 .. :try_end_59} :catchall_5d

    .line 90
    if-nez v7, :cond_5f

    .line 91
    .line 92
    monitor-exit v6

    .line 93
    goto :goto_a5

    .line 94
    :catchall_5d
    move-exception v0

    .line 95
    goto :goto_a3

    .line 96
    :cond_5f
    :try_start_5f
    iget-object v7, v9, Lcom/example/navistart/cores/BTProxy$Contact;->bluetoothAddress:Ljava/lang/String;

    .line 97
    .line 98
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 99
    .line 100
    invoke-virtual {v7, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    goto :goto_36

    .line 105
    :cond_68
    iput-object v7, v6, Lw0/l0;->l:Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_5d

    .line 106
    .line 107
    monitor-exit v6

    .line 108
    new-instance v1, Lw0/w0;

    .line 109
    .line 110
    invoke-direct {v1, v5}, Lw0/w0;-><init>(Ljava/util/ArrayList;)V

    .line 111
    .line 112
    .line 113
    iget-object v5, v0, Lw0/i0;->c:Lw0/l0;

    .line 114
    .line 115
    invoke-virtual {v5, v3, v4}, Lw0/l0;->y(II)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_79

    .line 120
    .line 121
    goto :goto_ac

    .line 122
    :cond_79
    iget-object v3, v0, Lw0/i0;->c:Lw0/l0;

    .line 123
    .line 124
    iput-object v1, v3, Lw0/l0;->s:Lw0/w0;

    .line 125
    .line 126
    iget v1, v3, Lw0/l0;->q:I

    .line 127
    .line 128
    invoke-virtual {v3, v1}, Lw0/l0;->c(I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_ac

    .line 133
    .line 134
    iget-object v0, v0, Lw0/i0;->c:Lw0/l0;

    .line 135
    .line 136
    iget-object v1, v0, Lw0/l0;->f:Lw0/n0;

    .line 137
    .line 138
    iget-object v3, v1, Lw0/n0;->a:Lw0/m0;

    .line 139
    .line 140
    sget-object v4, Lw0/m0;->d:Lw0/m0;

    .line 141
    .line 142
    if-eq v3, v4, :cond_93

    .line 143
    .line 144
    sget-object v4, Lw0/m0;->e:Lw0/m0;

    .line 145
    .line 146
    if-ne v3, v4, :cond_ac

    .line 147
    .line 148
    :cond_93
    iget-object v3, v0, Lw0/l0;->c:Ln/p;

    .line 149
    .line 150
    iget-object v0, v0, Lw0/l0;->s:Lw0/w0;

    .line 151
    .line 152
    iput-object v0, v1, Lw0/n0;->c:Lw0/w0;

    .line 153
    .line 154
    iput-boolean v2, v1, Lw0/n0;->h:Z

    .line 155
    .line 156
    invoke-virtual {v1}, Lw0/n0;->f()Lb1/m;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v3, v0}, Ln/p;->f(Lb1/m;)V

    .line 161
    .line 162
    .line 163
    goto :goto_ac

    .line 164
    :goto_a3
    :try_start_a3
    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_5d

    .line 165
    throw v0

    .line 166
    :cond_a5
    :goto_a5
    iget-object v0, v0, Lw0/i0;->c:Lw0/l0;

    .line 167
    .line 168
    sget-object v1, Lw0/k0;->c:Lw0/k0;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v3, v4}, Lw0/l0;->b(Lw0/k0;II)V

    .line 171
    .line 172
    .line 173
    :cond_ac
    :goto_ac
    return-void

    .line 174
    :pswitch_ad
    iget-object v0, p0, Lm0/d1;->e:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lm0/e1;

    .line 177
    .line 178
    iget-object v3, p0, Lm0/d1;->f:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Lm0/h1;

    .line 181
    .line 182
    iget v4, p0, Lm0/d1;->c:I

    .line 183
    .line 184
    iget v5, p0, Lm0/d1;->d:I

    .line 185
    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    new-array v2, v2, [B

    .line 195
    .line 196
    const/16 v4, 0x6a

    .line 197
    .line 198
    aput-byte v4, v2, v1

    .line 199
    .line 200
    const/16 v1, 0x8

    .line 201
    .line 202
    new-array v1, v1, [B

    .line 203
    .line 204
    fill-array-data v1, :array_e2

    .line 205
    .line 206
    .line 207
    invoke-static {v2, v1, v6}, Lcom/google/protobuf/q;->i([B[BLjava/lang/StringBuilder;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, v3, Lm0/h1;->j:Ljava/lang/String;

    .line 212
    .line 213
    iget-object v0, v0, Lm0/e1;->i:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Lm0/i1;

    .line 216
    .line 217
    invoke-static {v0, v5}, Lm0/i1;->v(Lm0/i1;I)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_ad
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :array_e2
    .array-data 1
        0x4ft
        -0x68t
        -0x43t
        0x65t
        -0x4et
        0x1t
        -0x57t
        0x17t
    .end array-data
.end method
