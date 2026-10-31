.class public final Lp7/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final b:Lp7/n;

.field public final c:Lp7/b;

.field public final d:Ll/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lp7/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lp7/d;->e:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lp7/n;Lp7/b;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/d;

    .line 5
    .line 6
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-direct {v0, v1}, Ll/d;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lp7/d;->d:Ll/d;

    .line 13
    .line 14
    iput-object p1, p0, Lp7/d;->b:Lp7/n;

    .line 15
    .line 16
    iput-object p2, p0, Lp7/d;->c:Lp7/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final S(ILr7/a;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp7/d;->d:Ll/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p1, p2}, Ll/d;->E(IILr7/a;)V

    .line 5
    .line 6
    .line 7
    :try_start_6
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lp7/b;->V(ILr7/a;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_c
    move-exception p1

    .line 14
    iget-object p2, p0, Lp7/d;->b:Lp7/n;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final V(IJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lp7/d;->d:Ll/d;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, p2, p3, v1, p1}, Ll/d;->G(JII)V

    .line 5
    .line 6
    .line 7
    :try_start_6
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lp7/b;->d0(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_c
    move-exception p1

    .line 14
    iget-object p2, p0, Lp7/d;->b:Lp7/n;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(ZILl9/l;I)V
    .registers 11

    .line 1
    iget-object v0, p0, Lp7/d;->d:Ll/d;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    move v5, p1

    .line 8
    move v2, p2

    .line 9
    move-object v3, p3

    .line 10
    move v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Ll/d;->B(IILl9/l;IZ)V

    .line 12
    .line 13
    .line 14
    :try_start_d
    iget-object p1, p0, Lp7/d;->c:Lp7/b;

    .line 15
    .line 16
    iget-object p1, p1, Lp7/b;->b:Lr7/i;

    .line 17
    .line 18
    monitor-enter p1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_36

    .line 19
    :try_start_12
    iget-boolean p2, p1, Lr7/i;->f:Z

    .line 20
    .line 21
    if-nez p2, :cond_2a

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    if-eqz v5, :cond_1c

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    int-to-byte p3, p3

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move p3, p2

    .line 30
    :goto_1d
    invoke-virtual {p1, v2, v4, p2, p3}, Lr7/i;->b(IIBB)V

    .line 31
    .line 32
    .line 33
    if-lez v4, :cond_28

    .line 34
    .line 35
    iget-object p2, p1, Lr7/i;->b:Ll9/z;

    .line 36
    .line 37
    int-to-long p3, v4

    .line 38
    invoke-virtual {p2, v3, p3, p4}, Ll9/z;->write(Ll9/l;J)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_32

    .line 39
    .line 40
    .line 41
    :cond_28
    :try_start_28
    monitor-exit p1
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_29} :catch_36

    .line 42
    return-void

    .line 43
    :cond_2a
    :try_start_2a
    new-instance p2, Ljava/io/IOException;

    .line 44
    .line 45
    const-string p3, "closed"

    .line 46
    .line 47
    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p2

    .line 51
    :catchall_32
    move-exception v0

    .line 52
    move-object p2, v0

    .line 53
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_32

    .line 54
    :try_start_35
    throw p2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    .line 55
    :catch_36
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    iget-object p2, p0, Lp7/d;->b:Lp7/n;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final c(Lr7/a;[B)V
    .registers 8

    .line 1
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {p2}, Ll9/o;->g([B)Ll9/o;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, p0, Lp7/d;->d:Ll/d;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v1, v4, p1, v2}, Ll/d;->C(IILr7/a;Ll9/o;)V

    .line 12
    .line 13
    .line 14
    :try_start_d
    invoke-virtual {v0, p1, p2}, Lp7/b;->y(Lr7/a;[B)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lp7/b;->flush()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_14
    move-exception p1

    .line 22
    iget-object p2, p0, Lp7/d;->b:Lp7/n;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final close()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp7/b;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_6
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Ljava/io/IOException;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_16

    .line 19
    .line 20
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 21
    .line 22
    goto :goto_18

    .line 23
    :cond_16
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 24
    .line 25
    :goto_18
    const-string v2, "Failed closing connection"

    .line 26
    .line 27
    sget-object v3, Lp7/d;->e:Ljava/util/logging/Logger;

    .line 28
    .line 29
    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final flush()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp7/b;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_6
    move-exception v0

    .line 8
    iget-object v1, p0, Lp7/d;->b:Lp7/n;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final y(ZII)V
    .registers 12

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/16 v2, 0x20

    .line 7
    .line 8
    iget-object v3, p0, Lp7/d;->d:Ll/d;

    .line 9
    .line 10
    if-eqz p1, :cond_38

    .line 11
    .line 12
    int-to-long v4, p2

    .line 13
    shl-long/2addr v4, v2

    .line 14
    int-to-long v6, p3

    .line 15
    and-long/2addr v0, v6

    .line 16
    or-long/2addr v0, v4

    .line 17
    invoke-virtual {v3}, Ll/d;->z()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_41

    .line 22
    .line 23
    iget-object v2, v3, Ll/d;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Ljava/util/logging/Logger;

    .line 26
    .line 27
    iget-object v3, v3, Ll/d;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/logging/Level;

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "OUTBOUND"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v5, " PING: ack=true bytes="

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_41

    .line 57
    :cond_38
    int-to-long v4, p2

    .line 58
    shl-long/2addr v4, v2

    .line 59
    int-to-long v6, p3

    .line 60
    and-long/2addr v0, v6

    .line 61
    or-long/2addr v0, v4

    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-virtual {v3, v2, v0, v1}, Ll/d;->D(IJ)V

    .line 64
    .line 65
    .line 66
    :cond_41
    :goto_41
    :try_start_41
    iget-object v0, p0, Lp7/d;->c:Lp7/b;

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2, p3}, Lp7/b;->S(ZII)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_46} :catch_47

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catch_47
    move-exception p1

    .line 73
    iget-object p2, p0, Lp7/d;->b:Lp7/n;

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
