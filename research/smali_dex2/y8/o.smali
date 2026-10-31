.class public final Ly8/o;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv8/i0;


# instance fields
.field public final b:Ly8/q;

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public final e:Lv8/e;


# direct methods
.method public constructor <init>(Ly8/q;JLjava/lang/Object;Lv8/e;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly8/o;->b:Ly8/q;

    .line 5
    .line 6
    iput-wide p2, p0, Ly8/o;->c:J

    .line 7
    .line 8
    iput-object p4, p0, Ly8/o;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p5, p0, Ly8/o;->e:Lv8/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 7

    .line 1
    iget-object v0, p0, Ly8/o;->b:Ly8/q;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-wide v1, p0, Ly8/o;->c:J

    .line 5
    .line 6
    invoke-virtual {v0}, Ly8/q;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v3
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-gez v1, :cond_f

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_f
    :try_start_f
    iget-object v1, v0, Ly8/q;->g:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-wide v2, p0, Ly8/o;->c:J

    .line 22
    .line 23
    long-to-int v4, v2

    .line 24
    array-length v5, v1

    .line 25
    add-int/lit8 v5, v5, -0x1

    .line 26
    .line 27
    and-int/2addr v4, v5

    .line 28
    aget-object v4, v1, v4
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_2d

    .line 29
    .line 30
    if-eq v4, p0, :cond_21

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :cond_21
    :try_start_21
    sget-object v4, Ly8/r;->a:La9/w;

    .line 35
    .line 36
    invoke-static {v1, v2, v3, v4}, Ly8/r;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ly8/q;->g()V

    .line 40
    .line 41
    .line 42
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2d

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception v1

    .line 47
    monitor-exit v0

    .line 48
    throw v1
.end method
