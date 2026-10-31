.class public final Lp7/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Lr7/i;

.field public final synthetic c:Lp7/c;


# direct methods
.method public constructor <init>(Lp7/c;Lr7/i;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/b;->c:Lp7/c;

    .line 5
    .line 6
    iput-object p2, p0, Lp7/b;->b:Lr7/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final S(ZII)V
    .registers 8

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    iget-object v0, p0, Lp7/b;->c:Lp7/c;

    .line 4
    .line 5
    iget v1, v0, Lp7/c;->m:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    iput v1, v0, Lp7/c;->m:I

    .line 10
    .line 11
    :cond_a
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_d
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 15
    .line 16
    if-nez v1, :cond_2b

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    const/4 v2, 0x0

    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3, v1, p1}, Lr7/i;->b(IIBB)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ll9/z;->writeInt(I)Ll9/m;

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ll9/z;->writeInt(I)Ll9/m;

    .line 33
    .line 34
    .line 35
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 36
    .line 37
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_29

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    goto :goto_33

    .line 44
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string p2, "closed"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_29

    .line 53
    throw p1
.end method

.method public final V(ILr7/a;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lp7/b;->c:Lp7/c;

    .line 2
    .line 3
    iget v1, v0, Lp7/c;->m:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lp7/c;->m:I

    .line 8
    .line 9
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 13
    .line 14
    if-nez v1, :cond_30

    .line 15
    .line 16
    iget v1, p2, Lr7/a;->b:I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    if-eq v1, v2, :cond_2a

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x4

    .line 24
    invoke-virtual {v0, p1, v3, v1, v2}, Lr7/i;->b(IIBB)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 28
    .line 29
    iget p2, p2, Lr7/a;->b:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ll9/z;->writeInt(I)Ll9/m;

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 35
    .line 36
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_28

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception p1

    .line 42
    goto :goto_38

    .line 43
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_30
    new-instance p1, Ljava/io/IOException;

    .line 50
    .line 51
    const-string p2, "closed"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_28

    .line 58
    throw p1
.end method

.method public final b(Lj/i;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp7/b;->c:Lp7/c;

    .line 2
    .line 3
    iget v1, v0, Lp7/c;->m:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lp7/c;->m:I

    .line 8
    .line 9
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_b
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 13
    .line 14
    if-nez v1, :cond_2f

    .line 15
    .line 16
    iget v1, v0, Lr7/i;->e:I

    .line 17
    .line 18
    iget v2, p1, Lj/i;->b:I

    .line 19
    .line 20
    and-int/lit8 v2, v2, 0x20

    .line 21
    .line 22
    if-eqz v2, :cond_1e

    .line 23
    .line 24
    iget-object p1, p1, Lj/i;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    aget v1, p1, v1

    .line 30
    .line 31
    :cond_1e
    iput v1, v0, Lr7/i;->e:I

    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v2, p1, v1}, Lr7/i;->b(IIBB)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 40
    .line 41
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2d

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    goto :goto_37

    .line 48
    :cond_2f
    :try_start_2f
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v1, "closed"

    .line 51
    .line 52
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2d

    .line 57
    throw p1
.end method

.method public final c()V
    .registers 6

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    const-string v1, ">> CONNECTION "

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-boolean v2, v0, Lr7/i;->f:Z

    .line 7
    .line 8
    if-nez v2, :cond_3d

    .line 9
    .line 10
    sget-object v2, Lr7/j;->a:Ljava/util/logging/Logger;

    .line 11
    .line 12
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2b

    .line 19
    .line 20
    sget-object v3, Lr7/j;->b:Ll9/o;

    .line 21
    .line 22
    invoke-virtual {v3}, Ll9/o;->d()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2b

    .line 42
    :catchall_29
    move-exception v1

    .line 43
    goto :goto_45

    .line 44
    :cond_2b
    :goto_2b
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 45
    .line 46
    sget-object v2, Lr7/j;->b:Ll9/o;

    .line 47
    .line 48
    invoke-virtual {v2}, Ll9/o;->k()[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ll9/z;->write([B)Ll9/m;

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 56
    .line 57
    invoke-virtual {v1}, Ll9/z;->flush()V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_29

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/io/IOException;

    .line 63
    .line 64
    const-string v2, "closed"

    .line 65
    .line 66
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_29

    .line 71
    throw v1
.end method

.method public final c0(Lj/i;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 5
    .line 6
    if-nez v1, :cond_45

    .line 7
    .line 8
    iget v1, p1, Lj/i;->b:I

    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    mul-int/lit8 v1, v1, 0x6

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-virtual {v0, v2, v1, v3, v2}, Lr7/i;->b(IIBB)V

    .line 19
    .line 20
    .line 21
    :goto_14
    const/16 v1, 0xa

    .line 22
    .line 23
    if-ge v2, v1, :cond_3e

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Lj/i;->b(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1f

    .line 30
    .line 31
    goto :goto_39

    .line 32
    :cond_1f
    if-ne v2, v3, :cond_23

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    goto :goto_29

    .line 36
    :cond_23
    const/4 v1, 0x7

    .line 37
    if-ne v2, v1, :cond_28

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v1, v2

    .line 42
    :goto_29
    iget-object v4, v0, Lr7/i;->b:Ll9/z;

    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ll9/z;->writeShort(I)Ll9/m;

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 48
    .line 49
    iget-object v4, p1, Lj/i;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, [I

    .line 52
    .line 53
    aget v4, v4, v2

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Ll9/z;->writeInt(I)Ll9/m;

    .line 56
    .line 57
    .line 58
    :goto_39
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_14

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    goto :goto_4d

    .line 63
    :cond_3e
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 64
    .line 65
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_3c

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :cond_45
    :try_start_45
    new-instance p1, Ljava/io/IOException;

    .line 71
    .line 72
    const-string v1, "closed"

    .line 73
    .line 74
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_3c

    .line 79
    throw p1
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr7/i;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d0(IJ)V
    .registers 8

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    const-string v1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-boolean v2, v0, Lr7/i;->f:Z

    .line 7
    .line 8
    if-nez v2, :cond_40

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long v2, p2, v2

    .line 13
    .line 14
    if-eqz v2, :cond_2c

    .line 15
    .line 16
    const-wide/32 v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    cmp-long v2, p2, v2

    .line 20
    .line 21
    if-gtz v2, :cond_2c

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x4

    .line 27
    invoke-virtual {v0, p1, v3, v1, v2}, Lr7/i;->b(IIBB)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 31
    .line 32
    long-to-int p2, p2

    .line 33
    invoke-virtual {p1, p2}, Ll9/z;->writeInt(I)Ll9/m;

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 37
    .line 38
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2a

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    goto :goto_48

    .line 45
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_40
    new-instance p1, Ljava/io/IOException;

    .line 66
    .line 67
    const-string p2, "closed"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_2a

    .line 74
    throw p1
.end method

.method public final flush()V
    .registers 4

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 5
    .line 6
    if-nez v1, :cond_10

    .line 7
    .line 8
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 9
    .line 10
    invoke-virtual {v1}, Ll9/z;->flush()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/IOException;

    .line 18
    .line 19
    const-string v2, "closed"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_e

    .line 26
    throw v1
.end method

.method public final y(Lr7/a;[B)V
    .registers 7

    .line 1
    iget-object v0, p0, Lp7/b;->b:Lr7/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, v0, Lr7/i;->f:Z

    .line 5
    .line 6
    if-nez v1, :cond_3c

    .line 7
    .line 8
    iget v1, p1, Lr7/a;->b:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_32

    .line 12
    .line 13
    array-length v1, p2

    .line 14
    add-int/lit8 v1, v1, 0x8

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3, v1, v2, v3}, Lr7/i;->b(IIBB)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ll9/z;->writeInt(I)Ll9/m;

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lr7/i;->b:Ll9/z;

    .line 27
    .line 28
    iget p1, p1, Lr7/a;->b:I

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ll9/z;->writeInt(I)Ll9/m;

    .line 31
    .line 32
    .line 33
    array-length p1, p2

    .line 34
    if-lez p1, :cond_2b

    .line 35
    .line 36
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ll9/z;->write([B)Ll9/m;

    .line 39
    .line 40
    .line 41
    goto :goto_2b

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    goto :goto_44

    .line 44
    :cond_2b
    :goto_2b
    iget-object p1, v0, Lr7/i;->b:Ll9/z;

    .line 45
    .line 46
    invoke-virtual {p1}, Ll9/z;->flush()V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_29

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :cond_32
    :try_start_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    const-string p2, "errorCode.httpCode == -1"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_3c
    new-instance p1, Ljava/io/IOException;

    .line 62
    .line 63
    const-string p2, "closed"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_32 .. :try_end_45} :catchall_29

    .line 70
    throw p1
.end method
