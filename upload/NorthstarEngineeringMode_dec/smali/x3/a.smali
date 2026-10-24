.class public final Lx3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/d;

.field public static final b:Lz1/d;

.field public static final c:Lz1/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lz1/d;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/a;->a:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/a;->b:Lz1/d;

    new-instance v0, Lz1/d;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lz1/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lx3/a;->c:Lz1/d;

    return-void
.end method

.method public static final a(Lh3/d;Ln3/l;)V
    .locals 9

    sget-object v0, Lf3/g;->a:Lf3/g;

    instance-of v1, p0, Lx3/g;

    if-eqz v1, :cond_a

    check-cast p0, Lx3/g;

    invoke-static {v0}, Lf3/c;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lv3/o;

    invoke-direct {v1, v0, p1}, Lv3/o;-><init>(Ljava/lang/Object;Ln3/l;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance p1, Lv3/n;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1}, Lv3/n;-><init>(ZLjava/lang/Throwable;)V

    move-object v1, p1

    :goto_0
    iget-object p1, p0, Lx3/g;->Z:Lh3/d;

    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    iget-object v2, p0, Lx3/g;->y:Lv3/w;

    invoke-virtual {v2}, Lv3/w;->o()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iput-object v1, p0, Lx3/g;->b1:Ljava/lang/Object;

    iput v4, p0, Lv3/j0;->x:I

    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    move-result-object p1

    invoke-virtual {v2, p1, p0}, Lv3/w;->l(Lh3/f;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {}, Lv3/n1;->a()Lv3/o0;

    move-result-object v2

    iget-wide v5, v2, Lv3/o0;->x:J

    const-wide v7, 0x100000000L

    cmp-long v3, v5, v7

    if-ltz v3, :cond_4

    iput-object v1, p0, Lx3/g;->b1:Ljava/lang/Object;

    iput v4, p0, Lv3/j0;->x:I

    iget-object p1, v2, Lv3/o0;->Z:Lg3/c;

    if-nez p1, :cond_3

    new-instance p1, Lg3/c;

    invoke-direct {p1}, Lg3/c;-><init>()V

    iput-object p1, v2, Lv3/o0;->Z:Lg3/c;

    :cond_3
    invoke-virtual {p1, p0}, Lg3/c;->a(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v2, v4}, Lv3/o0;->D(Z)V

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    move-result-object v4

    sget-object v5, Lv3/x0$b;->c:Lv3/x0$b;

    invoke-interface {v4, v5}, Lh3/f;->s(Lh3/f$c;)Lh3/f$b;

    move-result-object v4

    check-cast v4, Lv3/x0;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lv3/x0;->a()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Lv3/x0;->v()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lx3/g;->a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V

    invoke-static {p1}, Lb1/a;->c(Ljava/lang/Throwable;)Lf3/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx3/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lx3/g;->c1:Ljava/lang/Object;

    invoke-interface {p1}, Lh3/d;->getContext()Lh3/f;

    move-result-object v4

    invoke-static {v4, v1}, Lx3/v;->c(Lh3/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lx3/v;->a:Lz1/d;

    if-eq v1, v5, :cond_6

    invoke-static {p1, v4}, Lv3/u;->b(Lh3/d;Lh3/f;)Lv3/p1;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    move-object v5, v3

    :goto_1
    :try_start_1
    invoke-interface {p1, v0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v5, :cond_8

    :try_start_2
    invoke-static {v4, v1}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lv3/o0;->G()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {v2}, Lv3/o0;->B()V

    goto :goto_5

    :cond_8
    :try_start_3
    invoke-virtual {v5}, Lv3/p1;->X()V

    throw v3

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lv3/p1;->X()V

    throw v3

    :cond_9
    invoke-static {v4, v1}, Lx3/v;->a(Lh3/f;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p0, p1, v3}, Lv3/j0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v2}, Lv3/o0;->B()V

    throw p0

    :cond_a
    invoke-interface {p0, v0}, Lh3/d;->resumeWith(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
