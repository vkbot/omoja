.class public abstract Lx7/k;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "rx2.scheduler.drift-tolerance"

    .line 2
    .line 3
    const-wide/16 v1, 0xf

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public abstract a()Lx7/j;
.end method

.method public b(Li8/p;)Lz7/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx7/k;->c(Li8/p;)Lz7/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Li8/p;)Lz7/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lx7/k;->a()Lx7/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lx7/i;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lx7/i;-><init>(Li8/p;Lx7/j;)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lx7/j;->a(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)Lz7/a;

    .line 13
    .line 14
    .line 15
    return-object v1
.end method
