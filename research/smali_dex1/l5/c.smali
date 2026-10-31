.class public final synthetic Ll5/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ll5/d;


# direct methods
.method public synthetic constructor <init>(Ll5/d;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll5/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ll5/c;->c:Ll5/d;

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
    iget v0, p0, Ll5/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ee

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll5/c;->c:Ll5/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll5/d;->a()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Ll5/c;->c:Ll5/d;

    .line 13
    .line 14
    sget-object v1, Ll5/d;->m:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_10
    iget-object v2, v0, Ll5/d;->a:Lo4/f;

    .line 18
    .line 19
    invoke-virtual {v2}, Lo4/f;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v2, Lo4/f;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, Ll/d;->a(Landroid/content/Context;)Ll/d;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_27

    .line 28
    :try_start_1b
    iget-object v3, v0, Ll5/d;->c:Ll/d;

    .line 29
    .line 30
    invoke-virtual {v3}, Ll/d;->J()Lm5/b;

    .line 31
    .line 32
    .line 33
    move-result-object v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_de

    .line 34
    if-eqz v2, :cond_2a

    .line 35
    .line 36
    :try_start_23
    invoke-virtual {v2}, Ll/d;->L()V

    .line 37
    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto/16 :goto_e5

    .line 42
    .line 43
    :cond_2a
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_27

    .line 44
    :try_start_2b
    iget v2, v3, Lm5/b;->b:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x5

    .line 48
    const/4 v6, 0x1

    .line 49
    if-ne v2, v5, :cond_34

    .line 50
    .line 51
    move v7, v6

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v7, v4

    .line 54
    :goto_35
    if-nez v7, :cond_4e

    .line 55
    .line 56
    const/4 v7, 0x3

    .line 57
    if-ne v2, v7, :cond_3b

    .line 58
    .line 59
    move v4, v6

    .line 60
    :cond_3b
    if-eqz v4, :cond_3e

    .line 61
    .line 62
    goto :goto_4e

    .line 63
    :cond_3e
    iget-object v2, v0, Ll5/d;->d:Ll5/k;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ll5/k;->a(Lm5/b;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_dd

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ll5/d;->b(Lm5/b;)Lm5/b;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    goto :goto_52

    .line 76
    :catch_4b
    move-exception v1

    .line 77
    goto/16 :goto_da

    .line 78
    .line 79
    :cond_4e
    :goto_4e
    invoke-virtual {v0, v3}, Ll5/d;->f(Lm5/b;)Lm5/b;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_52
    .catch Ll5/f; {:try_start_2b .. :try_end_52} :catch_4b

    .line 83
    :goto_52
    monitor-enter v1

    .line 84
    :try_start_53
    iget-object v4, v0, Ll5/d;->a:Lo4/f;

    .line 85
    .line 86
    invoke-virtual {v4}, Lo4/f;->a()V

    .line 87
    .line 88
    .line 89
    iget-object v4, v4, Lo4/f;->a:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {v4}, Ll/d;->a(Landroid/content/Context;)Ll/d;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_69

    .line 95
    :try_start_5e
    iget-object v7, v0, Ll5/d;->c:Ll/d;

    .line 96
    .line 97
    invoke-virtual {v7, v2}, Ll/d;->y(Lm5/b;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_d1

    .line 98
    .line 99
    .line 100
    if-eqz v4, :cond_6c

    .line 101
    .line 102
    :try_start_65
    invoke-virtual {v4}, Ll/d;->L()V

    .line 103
    .line 104
    .line 105
    goto :goto_6c

    .line 106
    :catchall_69
    move-exception v0

    .line 107
    goto/16 :goto_d8

    .line 108
    .line 109
    :cond_6c
    :goto_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_69

    .line 110
    monitor-enter v0

    .line 111
    :try_start_6e
    iget-object v1, v0, Ll5/d;->k:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_9d

    .line 118
    .line 119
    iget-object v1, v3, Lm5/b;->a:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, v2, Lm5/b;->a:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_9d

    .line 128
    .line 129
    iget-object v1, v0, Ll5/d;->k:Ljava/util/HashSet;

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_8d

    .line 140
    .line 141
    goto :goto_9d

    .line 142
    :cond_8d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_97

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    throw v1

    .line 150
    :catchall_95
    move-exception v1

    .line 151
    goto :goto_cf

    .line 152
    :cond_97
    new-instance v1, Ljava/lang/ClassCastException;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 155
    .line 156
    .line 157
    throw v1
    :try_end_9d
    .catchall {:try_start_6e .. :try_end_9d} :catchall_95

    .line 158
    :cond_9d
    :goto_9d
    monitor-exit v0

    .line 159
    iget v1, v2, Lm5/b;->b:I

    .line 160
    .line 161
    const/4 v3, 0x4

    .line 162
    if-ne v1, v3, :cond_ad

    .line 163
    .line 164
    iget-object v1, v2, Lm5/b;->a:Ljava/lang/String;

    .line 165
    .line 166
    monitor-enter v0

    .line 167
    :try_start_a6
    iput-object v1, v0, Ll5/d;->j:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_aa

    .line 168
    .line 169
    monitor-exit v0

    .line 170
    goto :goto_ad

    .line 171
    :catchall_aa
    move-exception v1

    .line 172
    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    .line 173
    throw v1

    .line 174
    :cond_ad
    :goto_ad
    iget v1, v2, Lm5/b;->b:I

    .line 175
    .line 176
    if-ne v1, v5, :cond_ba

    .line 177
    .line 178
    new-instance v1, Ll5/f;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ll5/d;->g(Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    goto :goto_dd

    .line 187
    :cond_ba
    const/4 v3, 0x2

    .line 188
    if-eq v1, v3, :cond_c4

    .line 189
    .line 190
    if-ne v1, v6, :cond_c0

    .line 191
    .line 192
    goto :goto_c4

    .line 193
    :cond_c0
    invoke-virtual {v0, v2}, Ll5/d;->h(Lm5/b;)V

    .line 194
    .line 195
    .line 196
    goto :goto_dd

    .line 197
    :cond_c4
    :goto_c4
    new-instance v1, Ljava/io/IOException;

    .line 198
    .line 199
    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 200
    .line 201
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ll5/d;->g(Ljava/lang/Exception;)V

    .line 205
    .line 206
    .line 207
    goto :goto_dd

    .line 208
    :goto_cf
    :try_start_cf
    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_95

    .line 209
    throw v1

    .line 210
    :catchall_d1
    move-exception v0

    .line 211
    if-eqz v4, :cond_d7

    .line 212
    .line 213
    :try_start_d4
    invoke-virtual {v4}, Ll/d;->L()V

    .line 214
    .line 215
    .line 216
    :cond_d7
    throw v0

    .line 217
    :goto_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_69

    .line 218
    throw v0

    .line 219
    :goto_da
    invoke-virtual {v0, v1}, Ll5/d;->g(Ljava/lang/Exception;)V

    .line 220
    .line 221
    .line 222
    :cond_dd
    :goto_dd
    return-void

    .line 223
    :catchall_de
    move-exception v0

    .line 224
    if-eqz v2, :cond_e4

    .line 225
    .line 226
    :try_start_e1
    invoke-virtual {v2}, Ll/d;->L()V

    .line 227
    .line 228
    .line 229
    :cond_e4
    throw v0

    .line 230
    :goto_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_27

    .line 231
    throw v0

    .line 232
    :pswitch_e7
    iget-object v0, p0, Ll5/c;->c:Ll5/d;

    .line 233
    .line 234
    invoke-virtual {v0}, Ll5/d;->a()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    nop

    .line 239
    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_b
    .end packed-switch
.end method
