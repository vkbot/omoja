.class public final Lf5/d;
.super Le5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf5/d$a;,
        Lf5/d$b;,
        Lf5/d$c;
    }
.end annotation


# static fields
.field public static final p1:La5/a;


# instance fields
.field public final k1:Lf5/d$a;

.field public final l1:Lf5/a;

.field public final m1:Ljava/util/ArrayList;

.field public final transient n1:Ljava/util/concurrent/locks/Lock;

.field public final o1:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, La5/a;->Z:La5/a;

    sput-object v0, Lf5/d;->p1:La5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-class v0, Lf5/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc5/k;->c:Lc5/k;

    sget-object v2, Lf5/d$a;->e:Lf5/d$a;

    new-instance v3, Lf5/a;

    iget-object v4, v2, Lf5/d$a;->c:La5/a;

    invoke-direct {v3, v4}, Lf5/a;-><init>(La5/a;)V

    invoke-direct {p0, v0, v1}, Le5/a;-><init>(Ljava/lang/String;Lc5/k;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    iput-object v1, p0, Lf5/d;->n1:Ljava/util/concurrent/locks/Lock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lf5/d;->o1:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v2, p0, Lf5/d;->k1:Lf5/d$a;

    iput-object v3, p0, Lf5/d;->l1:Lf5/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/d;->m1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final I(La5/a;)Z
    .locals 6

    const-string v0, "messageLevel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lf5/d;->l1:Lf5/a;

    iget-object v0, v0, Lf5/a;->y:La5/a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lf5/d;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lf5/d;->m1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf5/c;

    invoke-interface {v3}, Lf5/c;->h1()La5/a;

    move-result-object v3

    iget v4, v3, La5/a;->r:I

    iget v5, v0, La5/a;->r:I

    if-lt v4, v5, :cond_0

    move-object v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf5/d;->k1:Lf5/d$a;

    iget-boolean p0, p0, Lf5/d$a;->a:Z

    if-nez p0, :cond_2

    iget p0, v0, La5/a;->r:I

    iget p1, p1, La5/a;->r:I

    if-lt p0, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final a(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final j(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final k(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final m(Ljava/lang/String;La5/a;Lc5/e;Ljava/lang/Throwable;)V
    .locals 8
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "INFORMATION_EXPOSURE_THROUGH_AN_ERROR_MESSAGE"
        }
    .end annotation

    iget-object v0, p0, Lf5/d;->k1:Lf5/d$a;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    const-string v7, "?"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v7

    new-instance p1, Lf5/b;

    iget-object v6, v0, Lf5/d$a;->d:Ljava/time/format/DateTimeFormatter;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v7}, Lf5/b;-><init>(La5/a;Lc5/e;Ljava/lang/Throwable;Ljava/time/format/DateTimeFormatter;Ljava/time/Instant;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, v0, Lf5/d$a;->b:I

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    :try_start_1
    iget-object p3, p0, Lf5/d;->o1:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p4

    if-lt p4, p2, :cond_6

    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_6
    :goto_4
    iget-object p2, p0, Lf5/d;->n1:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object p3, p0, Lf5/d;->m1:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    xor-int/2addr p4, v1

    new-instance v2, Lt0/b;

    invoke-direct {v2, v1, p0, p1}, Lt0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez p4, :cond_8

    iget-object p0, p0, Lf5/d;->l1:Lf5/a;

    invoke-virtual {p0}, Lf5/a;->h1()La5/a;

    move-result-object p2

    iget-object p3, p1, Lf5/b;->x:La5/a;

    iget-boolean p4, v0, Lf5/d$a;->a:Z

    if-nez p4, :cond_7

    iget p2, p2, La5/a;->r:I

    iget p3, p3, La5/a;->r:I

    if-lt p2, p3, :cond_8

    :cond_7
    invoke-virtual {p0, p1}, Lf5/a;->M0(Lf5/b;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public final varargs p(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final r(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final t(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final u(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final v(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method

.method public final w(La5/a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lf5/d;->I(La5/a;)Z

    move-result p0

    return p0
.end method
