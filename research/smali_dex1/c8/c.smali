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
    .registers 2

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
    .registers 7

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6e

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    if-nez v0, :cond_41

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_a
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 12
    .line 13
    if-nez v0, :cond_3d

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
    if-nez v0, :cond_38

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
    goto :goto_38

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto :goto_3f

    .line 57
    :cond_38
    :goto_38
    invoke-virtual {v0, p1}, Lc3/i;->a(Lz7/a;)V

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    monitor-exit p0

    .line 63
    goto :goto_41

    .line 64
    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_36

    .line 65
    throw p1

    .line 66
    :cond_41
    :goto_41
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_45
    return v1

    .line 71
    :pswitch_46
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 72
    .line 73
    if-nez v0, :cond_69

    .line 74
    .line 75
    monitor-enter p0

    .line 76
    :try_start_4b
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 77
    .line 78
    if-nez v0, :cond_65

    .line 79
    .line 80
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/util/LinkedList;

    .line 83
    .line 84
    if-nez v0, :cond_5f

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
    goto :goto_5f

    .line 94
    :catchall_5d
    move-exception p1

    .line 95
    goto :goto_67

    .line 96
    :cond_5f
    :goto_5f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    const/4 p1, 0x1

    .line 101
    goto :goto_6d

    .line 102
    :cond_65
    monitor-exit p0

    .line 103
    goto :goto_69

    .line 104
    :goto_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_5d

    .line 105
    throw p1

    .line 106
    :cond_69
    :goto_69
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    :goto_6d
    return p1

    .line 111
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_46
    .end packed-switch
.end method

.method public final b(Lz7/a;)Z
    .registers 9

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_76

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    goto :goto_50

    .line 12
    :cond_b
    monitor-enter p0

    .line 13
    :try_start_c
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 14
    .line 15
    if-eqz v0, :cond_14

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    goto :goto_50

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_51

    .line 21
    :cond_14
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lc3/i;

    .line 24
    .line 25
    if-eqz v0, :cond_4f

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
    if-nez v5, :cond_31

    .line 48
    .line 49
    goto :goto_4f

    .line 50
    :cond_31
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, 0x1

    .line 55
    if-eqz v5, :cond_3c

    .line 56
    .line 57
    invoke-virtual {v0, v4, v3, v2}, Lc3/i;->x(II[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_4c

    .line 61
    :cond_3c
    add-int/2addr v4, v6

    .line 62
    and-int/2addr v4, v3

    .line 63
    aget-object v5, v2, v4

    .line 64
    .line 65
    if-nez v5, :cond_43

    .line 66
    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3c

    .line 73
    .line 74
    invoke-virtual {v0, v4, v3, v2}, Lc3/i;->x(II[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    monitor-exit p0

    .line 78
    move v1, v6

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    :goto_4f
    monitor-exit p0

    .line 81
    :goto_50
    return v1

    .line 82
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_c .. :try_end_52} :catchall_12

    .line 83
    throw p1

    .line 84
    :pswitch_53
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    if-eqz v0, :cond_59

    .line 88
    .line 89
    goto :goto_73

    .line 90
    :cond_59
    monitor-enter p0

    .line 91
    :try_start_5a
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 92
    .line 93
    if-eqz v0, :cond_62

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    goto :goto_73

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    goto :goto_74

    .line 99
    :cond_62
    iget-object v0, p0, Lc8/c;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Ljava/util/LinkedList;

    .line 102
    .line 103
    if-eqz v0, :cond_72

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_6f

    .line 110
    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    monitor-exit p0

    .line 113
    const/4 v1, 0x1

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    :goto_72
    monitor-exit p0

    .line 116
    :goto_73
    return v1

    .line 117
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_60

    .line 118
    throw p1

    .line 119
    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_53
    .end packed-switch
.end method

.method public final c(Lz7/a;)Z
    .registers 3

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lc8/c;->b(Lz7/a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_10

    .line 11
    .line 12
    invoke-interface {p1}, Lz7/a;->dispose()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    return p1

    .line 19
    :pswitch_12
    invoke-virtual {p0, p1}, Lc8/c;->b(Lz7/a;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1f

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
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    return p1

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final dispose()V
    .registers 9

    .line 1
    iget v0, p0, Lc8/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    goto :goto_60

    .line 11
    :cond_a
    monitor-enter p0

    .line 12
    :try_start_b
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_13

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    goto :goto_60

    .line 18
    :catchall_11
    move-exception v0

    .line 19
    goto :goto_61

    .line 20
    :cond_13
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
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_11

    .line 31
    if-nez v1, :cond_21

    .line 32
    .line 33
    goto :goto_60

    .line 34
    :cond_21
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
    :goto_28
    if-ge v5, v3, :cond_47

    .line 42
    .line 43
    aget-object v6, v1, v5

    .line 44
    .line 45
    instance-of v7, v6, Lz7/a;

    .line 46
    .line 47
    if-eqz v7, :cond_44

    .line 48
    .line 49
    :try_start_30
    check-cast v6, Lz7/a;

    .line 50
    .line 51
    invoke-interface {v6}, Lz7/a;->dispose()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    goto :goto_44

    .line 55
    :catchall_36
    move-exception v6

    .line 56
    invoke-static {v6}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    if-nez v2, :cond_41

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    :cond_41
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_28

    .line 72
    :cond_47
    if-eqz v2, :cond_60

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-ne v1, v0, :cond_5a

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
    :cond_5a
    new-instance v0, La8/c;

    .line 92
    .line 93
    invoke-direct {v0, v2}, La8/c;-><init>(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_60
    :goto_60
    return-void

    .line 98
    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_11

    .line 99
    throw v0

    .line 100
    :pswitch_63
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 101
    .line 102
    if-eqz v0, :cond_68

    .line 103
    .line 104
    goto :goto_bc

    .line 105
    :cond_68
    monitor-enter p0

    .line 106
    :try_start_69
    iget-boolean v0, p0, Lc8/c;->c:Z

    .line 107
    .line 108
    if-eqz v0, :cond_71

    .line 109
    .line 110
    monitor-exit p0

    .line 111
    goto :goto_bc

    .line 112
    :catchall_6f
    move-exception v0

    .line 113
    goto :goto_bd

    .line 114
    :cond_71
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
    :try_end_7c
    .catchall {:try_start_69 .. :try_end_7c} :catchall_6f

    .line 125
    if-nez v1, :cond_7f

    .line 126
    .line 127
    goto :goto_bc

    .line 128
    :cond_7f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_a2

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
    :try_start_8f
    invoke-interface {v3}, Lz7/a;->dispose()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    .line 145
    .line 146
    .line 147
    goto :goto_83

    .line 148
    :catchall_93
    move-exception v3

    .line 149
    invoke-static {v3}, Lcom/bumptech/glide/d;->v(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    if-nez v2, :cond_9e

    .line 153
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_9e
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_83

    .line 163
    :cond_a2
    if-eqz v2, :cond_bc

    .line 164
    .line 165
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-ne v1, v0, :cond_b6

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
    :cond_b6
    new-instance v0, La8/c;

    .line 184
    .line 185
    invoke-direct {v0, v2}, La8/c;-><init>(Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_bc
    :goto_bc
    return-void

    .line 190
    :goto_bd
    :try_start_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_6f

    .line 191
    throw v0

    .line 192
    nop

    .line 193
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_63
    .end packed-switch
.end method
