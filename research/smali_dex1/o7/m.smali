.class public final Lo7/m;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lo7/o;

.field public final c:Lo7/u2;


# direct methods
.method public constructor <init>(Lo7/o;Lo7/u2;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo7/m;->b:Lo7/o;

    .line 5
    .line 6
    const-string p1, "time"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lo7/m;->c:Lo7/u2;

    .line 12
    .line 13
    return-void
.end method

.method public static F(I)Ljava/util/logging/Level;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/g;->c(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_13

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_10

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_10

    .line 13
    .line 14
    sget-object p0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_10
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_13
    sget-object p0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final E(I)Z
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_d

    .line 3
    .line 4
    iget-object p1, p0, Lo7/m;->b:Lo7/o;

    .line 5
    .line 6
    iget-object p1, p1, Lo7/o;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_8
    monitor-exit p1

    .line 10
    goto :goto_d

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    .line 13
    throw v0

    .line 14
    :cond_d
    :goto_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public final m(ILjava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lo7/m;->b:Lo7/o;

    .line 2
    .line 3
    iget-object v1, v0, Lo7/o;->b:Ln7/a0;

    .line 4
    .line 5
    invoke-static {p1}, Lo7/m;->F(I)Ljava/util/logging/Level;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lo7/o;->c:Ljava/util/logging/Logger;

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_13

    .line 16
    .line 17
    invoke-static {v1, v2, p2}, Lo7/o;->a(Ln7/a0;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Lo7/m;->E(I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_4c

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    if-ne p1, v1, :cond_1d

    .line 28
    .line 29
    goto :goto_4c

    .line 30
    :cond_1d
    invoke-static {p1}, Lcom/bumptech/glide/g;->c(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x2

    .line 35
    if-eq p1, v1, :cond_2e

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq p1, v1, :cond_2b

    .line 39
    .line 40
    sget-object p1, Ln7/v;->b:Ln7/v;

    .line 41
    .line 42
    :goto_29
    move-object v3, p1

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    sget-object p1, Ln7/v;->d:Ln7/v;

    .line 45
    .line 46
    goto :goto_29

    .line 47
    :cond_2e
    sget-object p1, Ln7/v;->c:Ln7/v;

    .line 48
    .line 49
    goto :goto_29

    .line 50
    :goto_31
    iget-object p1, p0, Lo7/m;->c:Lo7/u2;

    .line 51
    .line 52
    invoke-virtual {p1}, Lo7/u2;->q()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    const-string p1, "description"

    .line 57
    .line 58
    invoke-static {p2, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Ln7/w;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v2, p2

    .line 65
    invoke-direct/range {v1 .. v6}, Ln7/w;-><init>(Ljava/lang/String;Ln7/v;JLo7/k1;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, v0, Lo7/o;->a:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter p1

    .line 71
    :try_start_46
    monitor-exit p1

    .line 72
    return-void

    .line 73
    :catchall_48
    move-exception v0

    .line 74
    move-object p2, v0

    .line 75
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_48

    .line 76
    throw p2

    .line 77
    :cond_4c
    :goto_4c
    return-void
.end method

.method public final varargs n(ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 1
    invoke-static {p1}, Lo7/m;->F(I)Ljava/util/logging/Level;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lo7/m;->E(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_15

    .line 10
    .line 11
    sget-object v1, Lo7/o;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p2, 0x0

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    :goto_15
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    :goto_19
    invoke-virtual {p0, p1, p2}, Lo7/m;->m(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
