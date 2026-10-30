.class public abstract Lo7/b1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final u:Ln7/t0;


# instance fields
.field public a:Lo7/q2;

.field public final b:Ljava/lang/Object;

.field public final c:Lo7/w4;

.field public final d:Lo7/q2;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Lo7/t4;

.field public i:Z

.field public j:Lo7/w;

.field public k:Ln7/q;

.field public l:Z

.field public m:Lm0/r0;

.field public volatile n:Z

.field public o:Z

.field public p:Z

.field public q:Ln7/f1;

.field public r:Ln7/v0;

.field public s:Ljava/nio/charset/Charset;

.field public t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo7/u2;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, ":status"

    .line 9
    .line 10
    invoke-static {v1, v0}, Ln7/b0;->a(Ljava/lang/String;Lo7/u2;)Ln7/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lo7/b1;->u:Ln7/t0;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(ILo7/t4;Lo7/w4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lo7/b1;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v0, "transportTracer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lo7/b1;->c:Lo7/w4;

    .line 17
    .line 18
    new-instance v0, Lo7/q2;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p2, p3}, Lo7/q2;-><init>(Lo7/b1;ILo7/t4;Lo7/w4;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lo7/b1;->d:Lo7/q2;

    .line 24
    .line 25
    iput-object v0, p0, Lo7/b1;->a:Lo7/q2;

    .line 26
    .line 27
    sget-object p1, Ln7/q;->d:Ln7/q;

    .line 28
    .line 29
    iput-object p1, p0, Lo7/b1;->k:Ln7/q;

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lo7/b1;->l:Z

    .line 33
    .line 34
    iput-object p2, p0, Lo7/b1;->h:Lo7/t4;

    .line 35
    .line 36
    return-void
.end method

.method public static d(Ln7/v0;)Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    sget-object v0, Lo7/y0;->i:Ln7/q0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string v0, "charset="

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    array-length v0, p0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-object p0

    .line 32
    :catch_0
    :cond_0
    sget-object p0, Li4/b;->b:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    return-object p0
.end method

.method public static i(Ln7/v0;)Ln7/f1;
    .locals 4

    .line 1
    sget-object v0, Lo7/b1;->u:Ln7/t0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ln7/f1;->l:Ln7/f1;

    .line 12
    .line 13
    const-string v0, "Missing HTTP status code"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object v1, Lo7/y0;->i:Ln7/q0;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    if-le v2, v1, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "application/grpc"

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-ne v3, v2, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/16 v2, 0x2b

    .line 67
    .line 68
    if-eq v1, v2, :cond_6

    .line 69
    .line 70
    const/16 v2, 0x3b

    .line 71
    .line 72
    if-ne v1, v2, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Lo7/y0;->g(I)Ln7/f1;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "invalid content-type: "

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ln7/f1;->b(Ljava/lang/String;)Ln7/f1;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public final b(Ln7/f1;Lo7/v;Ln7/v0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lo7/b1;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lo7/b1;->i:Z

    .line 7
    .line 8
    iget-object v1, p0, Lo7/b1;->h:Lo7/t4;

    .line 9
    .line 10
    iget-object v2, v1, Lo7/t4;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v1, Lo7/t4;->a:[Ln7/e;

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_0

    .line 23
    .line 24
    aget-object v2, v0, v3

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ln7/e;->B(Ln7/f1;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lo7/b1;->c:Lo7/w4;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lo7/b1;->j:Lo7/w;

    .line 40
    .line 41
    invoke-interface {v0, p1, p2, p3}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public abstract c(Z)V
.end method

.method public final e(Ln7/v0;)V
    .locals 5

    .line 1
    sget-object v0, Ln7/h;->c:Ln7/h;

    .line 2
    .line 3
    iget-boolean v1, p0, Lo7/b1;->o:Z

    .line 4
    .line 5
    xor-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    const-string v2, "Received headers on closed stream"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lo7/b1;->h:Lo7/t4;

    .line 13
    .line 14
    iget-object v1, v1, Lo7/t4;->a:[Ln7/e;

    .line 15
    .line 16
    array-length v2, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Ln7/e;->g()V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lo7/y0;->f:Ln7/q0;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    sget-object v1, Lo7/y0;->d:Ln7/q0;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ln7/v0;->c(Ln7/s0;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v2, p0, Lo7/b1;->k:Ln7/q;

    .line 47
    .line 48
    iget-object v2, v2, Ln7/q;->a:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ln7/p;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v2, v2, Ln7/p;->a:Ln7/h;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 62
    :goto_1
    if-nez v2, :cond_2

    .line 63
    .line 64
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 65
    .line 66
    const-string v0, "Can\'t find decompressor for "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    move-object v0, p0

    .line 81
    check-cast v0, Lp7/j;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lp7/j;->m(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    if-eq v2, v0, :cond_3

    .line 88
    .line 89
    iget-object v0, p0, Lo7/b1;->a:Lo7/q2;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    const-string v3, "Already set full stream decompressor"

    .line 96
    .line 97
    invoke-static {v1, v3}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-object v2, v0, Lo7/q2;->f:Ln7/h;

    .line 101
    .line 102
    :cond_3
    iget-object v0, p0, Lo7/b1;->j:Lo7/w;

    .line 103
    .line 104
    invoke-interface {v0, p1}, Lo7/w;->l(Ln7/v0;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lo7/b1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lo7/b1;->f:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lo7/b1;->e:I

    .line 9
    .line 10
    const v2, 0x8000

    .line 11
    .line 12
    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v1, p0, Lo7/b1;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public final g(Ln7/f1;Lo7/v;ZLn7/v0;)V
    .locals 6

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lo7/b1;->o:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lo7/b1;->o:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iput-boolean v1, p0, Lo7/b1;->p:Z

    .line 21
    .line 22
    iget-object v1, p0, Lo7/b1;->b:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iput-boolean v0, p0, Lo7/b1;->g:Z

    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-boolean v0, p0, Lo7/b1;->l:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 p3, 0x0

    .line 33
    iput-object p3, p0, Lo7/b1;->m:Lm0/r0;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2, p4}, Lo7/b1;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Lm0/r0;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    move-object v2, p0

    .line 43
    move-object v3, p1

    .line 44
    move-object v4, p2

    .line 45
    move-object v5, p4

    .line 46
    invoke-direct/range {v0 .. v5}, Lm0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v2, Lo7/b1;->m:Lm0/r0;

    .line 50
    .line 51
    iget-object p1, v2, Lo7/b1;->a:Lo7/q2;

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lo7/q2;->close()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Lo7/q2;->isClosed()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object p2, p1, Lo7/q2;->m:Lo7/b0;

    .line 67
    .line 68
    iget p2, p2, Lo7/b0;->d:I

    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    if-nez p2, :cond_4

    .line 72
    .line 73
    move p2, p3

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 p2, 0x0

    .line 76
    :goto_0
    if-eqz p2, :cond_5

    .line 77
    .line 78
    invoke-virtual {p1}, Lo7/q2;->close()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    iput-boolean p3, p1, Lo7/q2;->r:Z

    .line 83
    .line 84
    :goto_1
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object v2, p0

    .line 87
    :goto_2
    move-object p1, v0

    .line 88
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    throw p1

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    goto :goto_2
.end method

.method public final h(Ln7/f1;ZLn7/v0;)V
    .locals 1

    .line 1
    sget-object v0, Lo7/v;->b:Lo7/v;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Lo7/b1;->g(Ln7/f1;Lo7/v;ZLn7/v0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
