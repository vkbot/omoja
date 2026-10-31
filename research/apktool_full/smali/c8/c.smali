.class public final Lc8/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lz7/a;


# instance fields
.field public final synthetic b:I

.field public volatile c:Z

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc8/c;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lz7/a;)Z
    .locals 5

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lc3/i;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lc3/i;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xf

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    rsub-int/lit8 v2, v2, 0x20

    .line 34
    .line 35
    shl-int v2, v1, v2

    .line 36
    .line 37
    add-int/lit8 v3, v2, -0x1

    .line 38
    .line 39
    iput v3, v0, Lc3/i;->a:I

    .line 40
    .line 41
    int-to-float v3, v2

    .line 42
    const/high16 v4, 0x3f400000    # 0.75f

    .line 43
    .line 44
    mul-float/2addr v4, v3

    .line 45
    float-to-int v3, v4

    .line 46
    iput v3, v0, Lc3/i;->c:I

    .line 47
    .line 48
    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    iput-object v2, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lc3/i;->a(Lz7/a;)V

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    monitor-exit p0

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_2
    :goto_2
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_3
    return v1

    .line 71
    :pswitch_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/util/LinkedList;

    .line 83
    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    new-instance v0, Ljava/util/LinkedList;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    goto :goto_5

    .line 96
    :cond_3
    :goto_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    const/4 p1, 0x1

    .line 101
    goto :goto_7

    .line 102
    :cond_4
    monitor-exit p0

    .line 103
    goto :goto_6

    .line 104
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    throw p1

    .line 106
    :cond_5
    :goto_6
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    :goto_7
    return p1

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lz7/a;)Z
    .locals 7

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    goto :goto_2

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lc3/i;

    .line 24
    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    iget-object v2, v0, Lc3/i;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, [Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v0, Lc3/i;->a:I

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v5, -0x61c88647

    .line 38
    .line 39
    .line 40
    mul-int/2addr v4, v5

    .line 41
    ushr-int/lit8 v5, v4, 0x10

    .line 42
    .line 43
    xor-int/2addr v4, v5

    .line 44
    and-int/2addr v4, v3

    .line 45
    aget-object v5, v2, v4

    .line 46
    .line 47
    if-nez v5, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, 0x1

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v4, v3, v2}, Lc3/i;->x(II[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    add-int/2addr v4, v6

    .line 62
    and-int/2addr v4, v3

    .line 63
    aget-object v5, v2, v4

    .line 64
    .line 65
    if-nez v5, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, v4, v3, v2}, Lc3/i;->x(II[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    monitor-exit p0

    .line 78
    move v1, v6

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    :goto_1
    monitor-exit p0

    .line 81
    :goto_2
    return v1

    .line 82
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p1

    .line 84
    :pswitch_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_6
    monitor-enter p0

    .line 91
    :try_start_1
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    goto :goto_5

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_6

    .line 99
    :cond_7
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Ljava/util/LinkedList;

    .line 102
    .line 103
    if-eqz v0, :cond_9

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_8

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_8
    monitor-exit p0

    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_9
    :goto_4
    monitor-exit p0

    .line 116
    :goto_5
    return v1

    .line 117
    :goto_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    throw p1

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lz7/a;)Z
    .locals 1

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lc8/c;->b(Lz7/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1

    .line 19
    :pswitch_0
    invoke-virtual {p0, p1}, Lc8/c;->b(Lz7/a;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p1, Lm8/m;

    .line 26
    .line 27
    invoke-virtual {p1}, Lm8/m;->dispose()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_1
    return p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final dispose()V
    .locals 8

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    monitor-enter p0

    .line 12
    :try_start_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    goto :goto_2

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lc8/c;->c:Z

    .line 22
    .line 23
    iget-object v1, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lc3/i;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget-object v1, v1, Lc3/i;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, [Ljava/lang/Object;

    .line 37
    .line 38
    array-length v3, v1

    .line 39
    const/4 v4, 0x0

    .line 40
    move v5, v4

    .line 41
    :goto_0
    if-ge v5, v3, :cond_5

    .line 42
    .line 43
    aget-object v6, v1, v5

    .line 44
    .line 45
    instance-of v7, v6, Lz7/a;

    .line 46
    .line 47
    if-eqz v7, :cond_4

    .line 48
    .line 49
    :try_start_1
    check-cast v6, Lz7/a;

    .line 50
    .line 51
    invoke-interface {v6}, Lz7/a;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception v6

    .line 56
    invoke-static {v6}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    if-eqz v2, :cond_7

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ne v1, v0, :cond_6

    .line 79
    .line 80
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Throwable;

    .line 85
    .line 86
    invoke-static {v0}, Lp8/d;->c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    throw v0

    .line 91
    :cond_6
    new-instance v0, La8/c;

    .line 92
    .line 93
    invoke-direct {v0, v2}, La8/c;-><init>(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_7
    :goto_2
    return-void

    .line 98
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw v0

    .line 100
    :pswitch_0
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 101
    .line 102
    if-eqz v0, :cond_8

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_8
    monitor-enter p0

    .line 106
    :try_start_3
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 107
    .line 108
    if-eqz v0, :cond_9

    .line 109
    .line 110
    monitor-exit p0

    .line 111
    goto :goto_5

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    goto :goto_6

    .line 114
    :cond_9
    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lc8/c;->c:Z

    .line 116
    .line 117
    iget-object v1, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/util/LinkedList;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    iput-object v2, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 125
    if-nez v1, :cond_a

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_c

    .line 137
    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lz7/a;

    .line 143
    .line 144
    :try_start_4
    invoke-interface {v3}, Lz7/a;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :catchall_3
    move-exception v3

    .line 149
    invoke-static {v3}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    if-nez v2, :cond_b

    .line 153
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_b
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_c
    if-eqz v2, :cond_e

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-ne v1, v0, :cond_d

    .line 170
    .line 171
    const/4 v0, 0x0

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Throwable;

    .line 177
    .line 178
    invoke-static {v0}, Lp8/d;->c(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    throw v0

    .line 183
    :cond_d
    new-instance v0, La8/c;

    .line 184
    .line 185
    invoke-direct {v0, v2}, La8/c;-><init>(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_e
    :goto_5
    return-void

    .line 190
    :goto_6
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 191
    throw v0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
