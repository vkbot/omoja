.class public final Lq/x;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public volatile b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Lk/g;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lk/g;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lq/x;->e:I

    .line 6
    .line 7
    iput-object p2, p0, Lq/x;->g:Lk/g;

    .line 8
    .line 9
    const-class p1, [B

    .line 10
    .line 11
    const/high16 v0, 0x10000

    .line 12
    .line 13
    invoke-virtual {p2, v0, p1}, Lk/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [B

    .line 18
    .line 19
    iput-object p1, p0, Lq/x;->b:[B

    .line 20
    .line 21
    return-void
.end method

.method public static y()V
    .registers 2

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    const-string v1, "BufferedInputStream is closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method


# virtual methods
.method public final declared-synchronized available()I
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 3
    .line 4
    iget-object v1, p0, Lq/x;->b:[B

    .line 5
    .line 6
    if-eqz v1, :cond_17

    .line 7
    .line 8
    if-eqz v0, :cond_17

    .line 9
    .line 10
    iget v1, p0, Lq/x;->c:I

    .line 11
    .line 12
    iget v2, p0, Lq/x;->f:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    .line 19
    add-int/2addr v1, v0

    .line 20
    monitor-exit p0

    .line 21
    return v1

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    :try_start_17
    invoke-static {}, Lq/x;->y()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    throw v0

    .line 29
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_15

    .line 30
    throw v0
.end method

.method public final b(Ljava/io/InputStream;[B)I
    .registers 8

    .line 1
    iget v0, p0, Lq/x;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_57

    .line 6
    .line 7
    iget v3, p0, Lq/x;->f:I

    .line 8
    .line 9
    sub-int/2addr v3, v0

    .line 10
    iget v4, p0, Lq/x;->d:I

    .line 11
    .line 12
    if-lt v3, v4, :cond_e

    .line 13
    .line 14
    goto :goto_57

    .line 15
    :cond_e
    if-nez v0, :cond_36

    .line 16
    .line 17
    array-length v2, p2

    .line 18
    if-le v4, v2, :cond_36

    .line 19
    .line 20
    iget v2, p0, Lq/x;->c:I

    .line 21
    .line 22
    array-length v3, p2

    .line 23
    if-ne v2, v3, :cond_36

    .line 24
    .line 25
    array-length v0, p2

    .line 26
    mul-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    if-le v0, v4, :cond_1e

    .line 29
    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move v4, v0

    .line 32
    :goto_1f
    iget-object v0, p0, Lq/x;->g:Lk/g;

    .line 33
    .line 34
    const-class v2, [B

    .line 35
    .line 36
    invoke-virtual {v0, v4, v2}, Lk/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, [B

    .line 41
    .line 42
    array-length v2, p2

    .line 43
    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lq/x;->b:[B

    .line 47
    .line 48
    iget-object v2, p0, Lq/x;->g:Lk/g;

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Lk/g;->g(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object p2, v0

    .line 54
    goto :goto_3d

    .line 55
    :cond_36
    if-lez v0, :cond_3d

    .line 56
    .line 57
    array-length v2, p2

    .line 58
    sub-int/2addr v2, v0

    .line 59
    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    :cond_3d
    :goto_3d
    iget v0, p0, Lq/x;->f:I

    .line 63
    .line 64
    iget v2, p0, Lq/x;->e:I

    .line 65
    .line 66
    sub-int/2addr v0, v2

    .line 67
    iput v0, p0, Lq/x;->f:I

    .line 68
    .line 69
    iput v1, p0, Lq/x;->e:I

    .line 70
    .line 71
    iput v1, p0, Lq/x;->c:I

    .line 72
    .line 73
    array-length v1, p2

    .line 74
    sub-int/2addr v1, v0

    .line 75
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iget p2, p0, Lq/x;->f:I

    .line 80
    .line 81
    if-gtz p1, :cond_53

    .line 82
    .line 83
    goto :goto_54

    .line 84
    :cond_53
    add-int/2addr p2, p1

    .line 85
    :goto_54
    iput p2, p0, Lq/x;->c:I

    .line 86
    .line 87
    return p1

    .line 88
    :cond_57
    :goto_57
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-lez p1, :cond_63

    .line 93
    .line 94
    iput v2, p0, Lq/x;->e:I

    .line 95
    .line 96
    iput v1, p0, Lq/x;->f:I

    .line 97
    .line 98
    iput p1, p0, Lq/x;->c:I

    .line 99
    .line 100
    :cond_63
    return p1
.end method

.method public final declared-synchronized c()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lq/x;->b:[B

    .line 3
    .line 4
    if-eqz v0, :cond_12

    .line 5
    .line 6
    iget-object v0, p0, Lq/x;->g:Lk/g;

    .line 7
    .line 8
    iget-object v1, p0, Lq/x;->b:[B

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lk/g;->g(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lq/x;->b:[B
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    :goto_12
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    .line 22
    throw v0
.end method

.method public final close()V
    .registers 4

    .line 1
    iget-object v0, p0, Lq/x;->b:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Lq/x;->g:Lk/g;

    .line 7
    .line 8
    iget-object v2, p0, Lq/x;->b:[B

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Lk/g;->g(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lq/x;->b:[B

    .line 14
    .line 15
    :cond_e
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 16
    .line 17
    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    if-eqz v0, :cond_17

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lq/x;->d:I

    .line 3
    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lq/x;->d:I

    .line 9
    .line 10
    iget p1, p0, Lq/x;->f:I

    .line 11
    .line 12
    iput p1, p0, Lq/x;->e:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public final markSupported()Z
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final declared-synchronized read()I
    .registers 7

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Lq/x;->b:[B

    .line 142
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    if-eqz v1, :cond_3b

    .line 143
    iget v3, p0, Lq/x;->f:I

    iget v4, p0, Lq/x;->c:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_1b

    invoke-virtual {p0, v1, v0}, Lq/x;->b(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_19

    if-ne v1, v5, :cond_1b

    .line 144
    monitor-exit p0

    return v5

    :catchall_19
    move-exception v0

    goto :goto_3f

    .line 145
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lq/x;->b:[B

    if-eq v0, v1, :cond_28

    .line 146
    iget-object v0, p0, Lq/x;->b:[B

    if-eqz v0, :cond_24

    goto :goto_28

    .line 147
    :cond_24
    invoke-static {}, Lq/x;->y()V

    throw v2

    .line 148
    :cond_28
    :goto_28
    iget v1, p0, Lq/x;->c:I

    iget v2, p0, Lq/x;->f:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_39

    add-int/lit8 v1, v2, 0x1

    .line 149
    iput v1, p0, Lq/x;->f:I

    aget-byte v0, v0, v2
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_19

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 150
    :cond_39
    monitor-exit p0

    return v5

    .line 151
    :cond_3b
    :try_start_3b
    invoke-static {}, Lq/x;->y()V

    throw v2

    :goto_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_19

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lq/x;->b:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_86

    .line 6
    .line 7
    if-nez p3, :cond_b

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_b
    :try_start_b
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 13
    .line 14
    if-eqz v2, :cond_82

    .line 15
    .line 16
    iget v3, p0, Lq/x;->f:I

    .line 17
    .line 18
    iget v4, p0, Lq/x;->c:I

    .line 19
    .line 20
    if-ge v3, v4, :cond_32

    .line 21
    .line 22
    sub-int/2addr v4, v3

    .line 23
    if-lt v4, p3, :cond_19

    .line 24
    .line 25
    move v4, p3

    .line 26
    :cond_19
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    iget v3, p0, Lq/x;->f:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    iput v3, p0, Lq/x;->f:I

    .line 33
    .line 34
    if-eq v4, p3, :cond_30

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_2e

    .line 40
    if-nez v3, :cond_2a

    .line 41
    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    add-int/2addr p2, v4

    .line 44
    sub-int v3, p3, v4

    .line 45
    .line 46
    goto :goto_33

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    goto :goto_8a

    .line 49
    :cond_30
    :goto_30
    monitor-exit p0

    .line 50
    return v4

    .line 51
    :cond_32
    move v3, p3

    .line 52
    :goto_33
    :try_start_33
    iget v4, p0, Lq/x;->e:I

    .line 53
    .line 54
    const/4 v5, -0x1

    .line 55
    if-ne v4, v5, :cond_48

    .line 56
    .line 57
    array-length v4, v0

    .line 58
    if-lt v3, v4, :cond_48

    .line 59
    .line 60
    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 61
    .line 62
    .line 63
    move-result v4
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_2e

    .line 64
    if-ne v4, v5, :cond_72

    .line 65
    .line 66
    if-ne v3, p3, :cond_44

    .line 67
    .line 68
    goto :goto_46

    .line 69
    :cond_44
    sub-int v5, p3, v3

    .line 70
    .line 71
    :goto_46
    monitor-exit p0

    .line 72
    return v5

    .line 73
    :cond_48
    :try_start_48
    invoke-virtual {p0, v2, v0}, Lq/x;->b(Ljava/io/InputStream;[B)I

    .line 74
    .line 75
    .line 76
    move-result v4
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_2e

    .line 77
    if-ne v4, v5, :cond_55

    .line 78
    .line 79
    if-ne v3, p3, :cond_51

    .line 80
    .line 81
    goto :goto_53

    .line 82
    :cond_51
    sub-int v5, p3, v3

    .line 83
    .line 84
    :goto_53
    monitor-exit p0

    .line 85
    return v5

    .line 86
    :cond_55
    :try_start_55
    iget-object v4, p0, Lq/x;->b:[B

    .line 87
    .line 88
    if-eq v0, v4, :cond_62

    .line 89
    .line 90
    iget-object v0, p0, Lq/x;->b:[B

    .line 91
    .line 92
    if-eqz v0, :cond_5e

    .line 93
    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    invoke-static {}, Lq/x;->y()V

    .line 96
    .line 97
    .line 98
    throw v1

    .line 99
    :cond_62
    :goto_62
    iget v4, p0, Lq/x;->c:I

    .line 100
    .line 101
    iget v5, p0, Lq/x;->f:I

    .line 102
    .line 103
    sub-int/2addr v4, v5

    .line 104
    if-lt v4, v3, :cond_6a

    .line 105
    .line 106
    move v4, v3

    .line 107
    :cond_6a
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    .line 109
    .line 110
    iget v5, p0, Lq/x;->f:I

    .line 111
    .line 112
    add-int/2addr v5, v4

    .line 113
    iput v5, p0, Lq/x;->f:I
    :try_end_72
    .catchall {:try_start_55 .. :try_end_72} :catchall_2e

    .line 114
    .line 115
    :cond_72
    sub-int/2addr v3, v4

    .line 116
    if-nez v3, :cond_77

    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return p3

    .line 120
    :cond_77
    :try_start_77
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 121
    .line 122
    .line 123
    move-result v5
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_2e

    .line 124
    if-nez v5, :cond_80

    .line 125
    .line 126
    sub-int/2addr p3, v3

    .line 127
    monitor-exit p0

    .line 128
    return p3

    .line 129
    :cond_80
    add-int/2addr p2, v4

    .line 130
    goto :goto_33

    .line 131
    :cond_82
    :try_start_82
    invoke-static {}, Lq/x;->y()V

    .line 132
    .line 133
    .line 134
    throw v1

    .line 135
    :cond_86
    invoke-static {}, Lq/x;->y()V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :goto_8a
    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_2e

    .line 140
    throw p1
.end method

.method public final declared-synchronized reset()V
    .registers 4

    .line 1
    const-string v0, "Mark has been invalidated, pos: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    iget-object v1, p0, Lq/x;->b:[B

    .line 5
    .line 6
    if-eqz v1, :cond_30

    .line 7
    .line 8
    iget v1, p0, Lq/x;->e:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v2, v1, :cond_12

    .line 12
    .line 13
    iput v1, p0, Lq/x;->f:I
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_38

    .line 19
    :cond_12
    :try_start_12
    new-instance v1, Lcom/google/protobuf/l;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lq/x;->f:I

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " markLimit: "

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lq/x;->d:I

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_30
    new-instance v0, Ljava/io/IOException;

    .line 50
    .line 51
    const-string v1, "Stream is closed"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_10

    .line 58
    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .registers 13

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x1

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-gez v0, :cond_b

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-wide v1

    .line 12
    :cond_b
    :try_start_b
    iget-object v0, p0, Lq/x;->b:[B

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_70

    .line 16
    .line 17
    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 18
    .line 19
    if-eqz v4, :cond_6c

    .line 20
    .line 21
    iget v3, p0, Lq/x;->c:I

    .line 22
    .line 23
    iget v5, p0, Lq/x;->f:I

    .line 24
    .line 25
    sub-int v6, v3, v5

    .line 26
    .line 27
    int-to-long v6, v6

    .line 28
    cmp-long v6, v6, p1

    .line 29
    .line 30
    if-ltz v6, :cond_28

    .line 31
    .line 32
    int-to-long v0, v5

    .line 33
    add-long/2addr v0, p1

    .line 34
    long-to-int v0, v0

    .line 35
    iput v0, p0, Lq/x;->f:I
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_26

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-wide p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    goto :goto_74

    .line 41
    :cond_28
    int-to-long v6, v3

    .line 42
    int-to-long v8, v5

    .line 43
    sub-long/2addr v6, v8

    .line 44
    :try_start_2b
    iput v3, p0, Lq/x;->f:I

    .line 45
    .line 46
    iget v3, p0, Lq/x;->e:I

    .line 47
    .line 48
    const/4 v5, -0x1

    .line 49
    if-eq v3, v5, :cond_5e

    .line 50
    .line 51
    iget v3, p0, Lq/x;->d:I

    .line 52
    .line 53
    int-to-long v8, v3

    .line 54
    cmp-long v3, p1, v8

    .line 55
    .line 56
    if-gtz v3, :cond_5e

    .line 57
    .line 58
    invoke-virtual {p0, v4, v0}, Lq/x;->b(Ljava/io/InputStream;[B)I

    .line 59
    .line 60
    .line 61
    move-result v0
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_26

    .line 62
    if-ne v0, v5, :cond_41

    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-wide v6

    .line 66
    :cond_41
    :try_start_41
    iget v0, p0, Lq/x;->c:I

    .line 67
    .line 68
    iget v1, p0, Lq/x;->f:I

    .line 69
    .line 70
    sub-int v2, v0, v1

    .line 71
    .line 72
    int-to-long v2, v2

    .line 73
    sub-long v4, p1, v6

    .line 74
    .line 75
    cmp-long v2, v2, v4

    .line 76
    .line 77
    if-ltz v2, :cond_56

    .line 78
    .line 79
    int-to-long v0, v1

    .line 80
    add-long/2addr v0, p1

    .line 81
    sub-long/2addr v0, v6

    .line 82
    long-to-int v0, v0

    .line 83
    iput v0, p0, Lq/x;->f:I
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_26

    .line 84
    .line 85
    monitor-exit p0

    .line 86
    return-wide p1

    .line 87
    :cond_56
    int-to-long p1, v0

    .line 88
    add-long/2addr v6, p1

    .line 89
    int-to-long p1, v1

    .line 90
    sub-long/2addr v6, p1

    .line 91
    :try_start_5a
    iput v0, p0, Lq/x;->f:I
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_26

    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return-wide v6

    .line 95
    :cond_5e
    sub-long/2addr p1, v6

    .line 96
    :try_start_5f
    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    cmp-long v0, p1, v1

    .line 101
    .line 102
    if-lez v0, :cond_69

    .line 103
    .line 104
    iput v5, p0, Lq/x;->e:I
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_26

    .line 105
    .line 106
    :cond_69
    add-long/2addr v6, p1

    .line 107
    monitor-exit p0

    .line 108
    return-wide v6

    .line 109
    :cond_6c
    :try_start_6c
    invoke-static {}, Lq/x;->y()V

    .line 110
    .line 111
    .line 112
    throw v3

    .line 113
    :cond_70
    invoke-static {}, Lq/x;->y()V

    .line 114
    .line 115
    .line 116
    throw v3

    .line 117
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_26

    .line 118
    throw p1
.end method
