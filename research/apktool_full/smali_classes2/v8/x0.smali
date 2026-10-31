.class public abstract Lv8/x0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static a(Lv8/z0;Lv8/d1;I)Lv8/i0;
    .locals 9

    .line 1
    and-int/lit8 v0, p2, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    and-int/lit8 p2, p2, 0x2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v1, v2

    .line 16
    :goto_1
    check-cast p0, Lv8/h1;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    instance-of v2, p1, Lv8/b1;

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move-object v2, p1

    .line 29
    check-cast v2, Lv8/b1;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object v2, p2

    .line 33
    :goto_2
    if-nez v2, :cond_4

    .line 34
    .line 35
    new-instance v2, Lv8/w0;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Lv8/w0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    move-object v2, p1

    .line 42
    :cond_4
    :goto_3
    iput-object p0, v2, Lv8/d1;->e:Lv8/h1;

    .line 43
    .line 44
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lv8/h1;->w()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Lv8/k0;

    .line 49
    .line 50
    if-eqz v4, :cond_c

    .line 51
    .line 52
    move-object v4, v3

    .line 53
    check-cast v4, Lv8/k0;

    .line 54
    .line 55
    iget-boolean v5, v4, Lv8/k0;->b:Z

    .line 56
    .line 57
    if-eqz v5, :cond_8

    .line 58
    .line 59
    sget-object v5, Lv8/h1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    :cond_6
    invoke-virtual {v5, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_7
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-eq v4, v3, :cond_6

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_8
    new-instance v3, Lv8/j1;

    .line 77
    .line 78
    invoke-direct {v3}, La9/m;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-boolean v5, v4, Lv8/k0;->b:Z

    .line 82
    .line 83
    if-eqz v5, :cond_9

    .line 84
    .line 85
    move-object v5, v3

    .line 86
    goto :goto_5

    .line 87
    :cond_9
    new-instance v5, Lv8/t0;

    .line 88
    .line 89
    invoke-direct {v5, v3}, Lv8/t0;-><init>(Lv8/j1;)V

    .line 90
    .line 91
    .line 92
    :goto_5
    sget-object v6, Lv8/h1;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 93
    .line 94
    :cond_a
    invoke-virtual {v6, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_b

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_b
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eq v3, v4, :cond_a

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_c
    instance-of v4, v3, Lv8/u0;

    .line 109
    .line 110
    if-eqz v4, :cond_15

    .line 111
    .line 112
    move-object v4, v3

    .line 113
    check-cast v4, Lv8/u0;

    .line 114
    .line 115
    invoke-interface {v4}, Lv8/u0;->c()Lv8/j1;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_d

    .line 120
    .line 121
    check-cast v3, Lv8/d1;

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lv8/h1;->G(Lv8/d1;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_d
    sget-object v6, Lv8/k1;->b:Lv8/k1;

    .line 128
    .line 129
    if-eqz v0, :cond_12

    .line 130
    .line 131
    instance-of v7, v3, Lv8/f1;

    .line 132
    .line 133
    if-eqz v7, :cond_12

    .line 134
    .line 135
    monitor-enter v3

    .line 136
    :try_start_0
    move-object v7, v3

    .line 137
    check-cast v7, Lv8/f1;

    .line 138
    .line 139
    invoke-virtual {v7}, Lv8/f1;->d()Ljava/lang/Throwable;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_e

    .line 144
    .line 145
    instance-of v8, p1, Lv8/i;

    .line 146
    .line 147
    if-eqz v8, :cond_11

    .line 148
    .line 149
    move-object v8, v3

    .line 150
    check-cast v8, Lv8/f1;

    .line 151
    .line 152
    invoke-virtual {v8}, Lv8/f1;->f()Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_11

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    goto :goto_7

    .line 161
    :cond_e
    :goto_6
    move-object v6, v3

    .line 162
    check-cast v6, Lv8/u0;

    .line 163
    .line 164
    invoke-virtual {p0, v6, v5, v2}, Lv8/h1;->h(Lv8/u0;Lv8/j1;Lv8/d1;)Z

    .line 165
    .line 166
    .line 167
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-nez v6, :cond_f

    .line 169
    .line 170
    monitor-exit v3

    .line 171
    goto :goto_4

    .line 172
    :cond_f
    if-nez v7, :cond_10

    .line 173
    .line 174
    monitor-exit v3

    .line 175
    return-object v2

    .line 176
    :cond_10
    move-object v6, v2

    .line 177
    :cond_11
    :try_start_1
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    monitor-exit v3

    .line 180
    goto :goto_8

    .line 181
    :goto_7
    monitor-exit v3

    .line 182
    throw p0

    .line 183
    :cond_12
    move-object v7, p2

    .line 184
    :goto_8
    if-eqz v7, :cond_14

    .line 185
    .line 186
    if-eqz v1, :cond_13

    .line 187
    .line 188
    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_13
    return-object v6

    .line 192
    :cond_14
    invoke-virtual {p0, v4, v5, v2}, Lv8/h1;->h(Lv8/u0;Lv8/j1;Lv8/d1;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_5

    .line 197
    .line 198
    :goto_9
    return-object v2

    .line 199
    :cond_15
    if-eqz v1, :cond_18

    .line 200
    .line 201
    instance-of p0, v3, Lv8/k;

    .line 202
    .line 203
    if-eqz p0, :cond_16

    .line 204
    .line 205
    check-cast v3, Lv8/k;

    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_16
    move-object v3, p2

    .line 209
    :goto_a
    if-eqz v3, :cond_17

    .line 210
    .line 211
    iget-object p2, v3, Lv8/k;->a:Ljava/lang/Throwable;

    .line 212
    .line 213
    :cond_17
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    :cond_18
    sget-object p0, Lv8/k1;->b:Lv8/k1;

    .line 217
    .line 218
    return-object p0
.end method
