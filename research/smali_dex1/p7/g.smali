.class public final Lp7/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/z;


# instance fields
.field public final b:Ln/p;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ln/p;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lo7/u2;

.field public final g:Ljavax/net/ssl/SSLSocketFactory;

.field public final h:Lq7/c;

.field public final i:I

.field public final j:Z

.field public final k:Lo7/e;

.field public final l:J

.field public final m:I

.field public final n:I

.field public o:Z


# direct methods
.method public constructor <init>(Ln/p;Ln/p;Ljavax/net/ssl/SSLSocketFactory;Lq7/c;IZJJIILo7/u2;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp7/g;->b:Ln/p;

    .line 5
    .line 6
    iget-object p1, p1, Ln/p;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lo7/r4;

    .line 9
    .line 10
    invoke-static {p1}, Lo7/s4;->a(Lo7/r4;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object p1, p0, Lp7/g;->c:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-object p2, p0, Lp7/g;->d:Ln/p;

    .line 19
    .line 20
    iget-object p1, p2, Ln/p;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lo7/r4;

    .line 23
    .line 24
    invoke-static {p1}, Lo7/s4;->a(Lo7/r4;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    .line 30
    iput-object p1, p0, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    iput-object p3, p0, Lp7/g;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 33
    .line 34
    iput-object p4, p0, Lp7/g;->h:Lq7/c;

    .line 35
    .line 36
    iput p5, p0, Lp7/g;->i:I

    .line 37
    .line 38
    iput-boolean p6, p0, Lp7/g;->j:Z

    .line 39
    .line 40
    new-instance p1, Lo7/e;

    .line 41
    .line 42
    invoke-direct {p1, p7, p8}, Lo7/e;-><init>(J)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lp7/g;->k:Lo7/e;

    .line 46
    .line 47
    iput-wide p9, p0, Lp7/g;->l:J

    .line 48
    .line 49
    iput p11, p0, Lp7/g;->m:I

    .line 50
    .line 51
    iput p12, p0, Lp7/g;->n:I

    .line 52
    .line 53
    const-string p1, "transportTracerFactory"

    .line 54
    .line 55
    invoke-static {p13, p1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iput-object p13, p0, Lp7/g;->f:Lo7/u2;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final I(Ljava/net/SocketAddress;Lo7/y;Lo7/j1;)Lo7/c0;
    .registers 14

    .line 1
    iget-boolean p3, p0, Lp7/g;->o:Z

    .line 2
    .line 3
    if-nez p3, :cond_35

    .line 4
    .line 5
    new-instance p3, Lo7/d;

    .line 6
    .line 7
    iget-object v0, p0, Lp7/g;->k:Lo7/e;

    .line 8
    .line 9
    iget-object v1, v0, Lo7/e;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-direct {p3, v0, v1, v2}, Lo7/d;-><init>(Lo7/e;J)V

    .line 16
    .line 17
    .line 18
    new-instance v9, Lcom/bumptech/glide/m;

    .line 19
    .line 20
    const/16 v0, 0x18

    .line 21
    .line 22
    invoke-direct {v9, v0, p3}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object v5, p1

    .line 26
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 27
    .line 28
    new-instance v3, Lp7/n;

    .line 29
    .line 30
    iget-object v6, p2, Lo7/y;->a:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v7, p2, Lo7/y;->b:Ln7/b;

    .line 33
    .line 34
    iget-object v8, p2, Lo7/y;->c:Ln7/u;

    .line 35
    .line 36
    move-object v4, p0

    .line 37
    invoke-direct/range {v3 .. v9}, Lp7/n;-><init>(Lp7/g;Ljava/net/InetSocketAddress;Ljava/lang/String;Ln7/b;Ln7/u;Lcom/bumptech/glide/m;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p1, v4, Lp7/g;->j:Z

    .line 41
    .line 42
    if-eqz p1, :cond_34

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, v3, Lp7/n;->G:Z

    .line 46
    .line 47
    iput-wide v1, v3, Lp7/n;->H:J

    .line 48
    .line 49
    iget-wide p1, v4, Lp7/g;->l:J

    .line 50
    .line 51
    iput-wide p1, v3, Lp7/n;->I:J

    .line 52
    .line 53
    :cond_34
    return-object v3

    .line 54
    :cond_35
    move-object v4, p0

    .line 55
    const-string p1, "The transport factory is closed."

    .line 56
    .line 57
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    return-object p1
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lp7/g;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp7/g;->o:Z

    .line 8
    .line 9
    iget-object v0, p0, Lp7/g;->b:Ln/p;

    .line 10
    .line 11
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lo7/r4;

    .line 14
    .line 15
    iget-object v1, p0, Lp7/g;->c:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lp7/g;->d:Ln/p;

    .line 21
    .line 22
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lo7/r4;

    .line 25
    .line 26
    iget-object v1, p0, Lp7/g;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lo7/s4;->b(Lo7/r4;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
