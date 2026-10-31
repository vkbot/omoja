.class public final synthetic Lc5/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc5/d;


# direct methods
.method public synthetic constructor <init>(Lc5/d;I)V
    .registers 3

    .line 1
    iput p2, p0, Lc5/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lc5/c;->c:Lc5/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 9

    .line 1
    iget v0, p0, Lc5/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_104

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc5/c;->c:Lc5/d;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, v0, Lc5/d;->a:Lc5/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc5/b;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lc5/i;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-object v4, v0, Lc5/d;->c:Lk5/b;

    .line 22
    .line 23
    invoke-interface {v4}, Lk5/b;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lr5/b;

    .line 28
    .line 29
    iget-object v5, v4, Lr5/b;->b:Lr5/c;

    .line 30
    .line 31
    iget-object v6, v5, Lr5/c;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v6, Ljava/util/HashSet;

    .line 34
    .line 35
    monitor-enter v6
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_61

    .line 36
    :try_start_23
    iget-object v7, v5, Lr5/c;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v7, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_66

    .line 45
    :try_start_2c
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v4, v4, Lr5/b;->a:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v6, :cond_35

    .line 52
    .line 53
    goto :goto_5b

    .line 54
    :cond_35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v4, v5, Lr5/c;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Ljava/util/HashSet;

    .line 70
    .line 71
    monitor-enter v4
    :try_end_47
    .catchall {:try_start_2c .. :try_end_47} :catchall_61

    .line 72
    :try_start_47
    iget-object v5, v5, Lr5/c;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_63

    .line 81
    :try_start_50
    invoke-static {v5}, Lr5/b;->a(Ljava/util/Set;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_5b
    invoke-virtual {v1, v2, v3, v4}, Lc5/i;->g(JLjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_61

    .line 96
    const/4 v0, 0x0

    .line 97
    return-object v0

    .line 98
    :catchall_61
    move-exception v1

    .line 99
    goto :goto_69

    .line 100
    :catchall_63
    move-exception v1

    .line 101
    :try_start_64
    monitor-exit v4
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    .line 102
    :try_start_65
    throw v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_61

    .line 103
    :catchall_66
    move-exception v1

    .line 104
    :try_start_67
    monitor-exit v6
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .line 105
    :try_start_68
    throw v1

    .line 106
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_61

    .line 107
    throw v1

    .line 108
    :pswitch_6b
    iget-object v0, p0, Lc5/c;->c:Lc5/d;

    .line 109
    .line 110
    monitor-enter v0

    .line 111
    :try_start_6e
    iget-object v1, v0, Lc5/d;->a:Lc5/b;

    .line 112
    .line 113
    invoke-virtual {v1}, Lc5/b;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lc5/i;

    .line 118
    .line 119
    invoke-virtual {v1}, Lc5/i;->c()Ljava/util/ArrayList;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1}, Lc5/i;->b()V

    .line 124
    .line 125
    .line 126
    new-instance v1, Lorg/json/JSONArray;

    .line 127
    .line 128
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 129
    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_83
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-ge v3, v4, :cond_af

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Lc5/a;

    .line 143
    .line 144
    new-instance v5, Lorg/json/JSONObject;

    .line 145
    .line 146
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v6, "agent"

    .line 150
    .line 151
    iget-object v7, v4, Lc5/a;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v6, "dates"

    .line 157
    .line 158
    new-instance v7, Lorg/json/JSONArray;

    .line 159
    .line 160
    iget-object v4, v4, Lc5/a;->b:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v7, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto :goto_83

    .line 174
    :catchall_ad
    move-exception v1

    .line 175
    goto :goto_101

    .line 176
    :cond_af
    new-instance v2, Lorg/json/JSONObject;

    .line 177
    .line 178
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v3, "heartbeats"

    .line 182
    .line 183
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .line 185
    .line 186
    const-string v1, "version"

    .line 187
    .line 188
    const-string v3, "2"

    .line 189
    .line 190
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    .line 192
    .line 193
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 194
    .line 195
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v3, Landroid/util/Base64OutputStream;

    .line 199
    .line 200
    const/16 v4, 0xb

    .line 201
    .line 202
    invoke-direct {v3, v1, v4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_cc
    .catchall {:try_start_6e .. :try_end_cc} :catchall_ad

    .line 203
    .line 204
    .line 205
    :try_start_cc
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    .line 206
    .line 207
    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d1
    .catchall {:try_start_cc .. :try_end_d1} :catchall_ec

    .line 208
    .line 209
    .line 210
    :try_start_d1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    const-string v5, "UTF-8"

    .line 215
    .line 216
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_de
    .catchall {:try_start_d1 .. :try_end_de} :catchall_ee

    .line 221
    .line 222
    .line 223
    :try_start_de
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_ec

    .line 224
    .line 225
    .line 226
    :try_start_e1
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    .line 227
    .line 228
    .line 229
    const-string v2, "UTF-8"

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_e1 .. :try_end_eb} :catchall_ad

    .line 236
    return-object v1

    .line 237
    :catchall_ec
    move-exception v1

    .line 238
    goto :goto_f8

    .line 239
    :catchall_ee
    move-exception v1

    .line 240
    :try_start_ef
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3

    .line 241
    .line 242
    .line 243
    goto :goto_f7

    .line 244
    :catchall_f3
    move-exception v2

    .line 245
    :try_start_f4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :goto_f7
    throw v1
    :try_end_f8
    .catchall {:try_start_f4 .. :try_end_f8} :catchall_ec

    .line 249
    :goto_f8
    :try_start_f8
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fc

    .line 250
    .line 251
    .line 252
    goto :goto_100

    .line 253
    :catchall_fc
    move-exception v2

    .line 254
    :try_start_fd
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    :goto_100
    throw v1

    .line 258
    :goto_101
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_fd .. :try_end_102} :catchall_ad

    .line 259
    throw v1

    .line 260
    nop

    .line 261
    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_6b
    .end packed-switch
.end method
