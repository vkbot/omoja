.class public final Lm8/a;
.super Lx7/j;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lc8/c;

.field public final c:Lc8/c;

.field public final d:Lc8/c;

.field public final e:Lm8/c;

.field public volatile f:Z


# direct methods
.method public constructor <init>(Lm8/c;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm8/a;->e:Lm8/c;

    .line 5
    .line 6
    new-instance p1, Lc8/c;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lc8/c;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lm8/a;->b:Lc8/c;

    .line 13
    .line 14
    new-instance v0, Lc8/c;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1}, Lc8/c;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lm8/a;->c:Lc8/c;

    .line 21
    .line 22
    new-instance v1, Lc8/c;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2}, Lc8/c;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lm8/a;->d:Lc8/c;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Lc8/c;->a(Lz7/a;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lc8/c;->a(Lz7/a;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lz7/a;
    .registers 5

    .line 1
    iget-boolean p2, p0, Lm8/a;->f:Z

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    sget-object p1, Lc8/b;->b:Lc8/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object p2, p0, Lm8/a;->e:Lm8/c;

    .line 9
    .line 10
    iget-object v0, p0, Lm8/a;->c:Lc8/c;

    .line 11
    .line 12
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {p2, p1, v1, v0}, Lm8/j;->c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lc8/c;)Lm8/m;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final b(Lh8/h0;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lm8/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lm8/a;->e:Lm8/c;

    .line 7
    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iget-object v2, p0, Lm8/a;->b:Lc8/c;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lm8/j;->c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;Lc8/c;)Lm8/m;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final dispose()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm8/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lm8/a;->f:Z

    .line 7
    .line 8
    iget-object v0, p0, Lm8/a;->d:Lc8/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc8/c;->dispose()V

    .line 11
    .line 12
    .line 13
    :cond_c
    return-void
.end method
