.class public Lc0/l;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    const/high16 v1, 0x3f400000    # 0.75f

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/16 v3, 0x64

    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lc0/l;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    iput-wide p1, p0, Lc0/l;->b:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lc0/l;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lc0/k;

    .line 9
    .line 10
    if-eqz p1, :cond_10

    .line 11
    .line 12
    iget-object p1, p1, Lc0/k;->a:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_e

    .line 13
    .line 14
    goto :goto_11

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_e

    .line 21
    throw p1
.end method

.method public b(Ljava/lang/Object;)I
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 1
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0, p2}, Lc0/l;->b(Ljava/lang/Object;)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    int-to-long v1, v0

    .line 7
    iget-wide v3, p0, Lc0/l;->b:J

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-ltz v3, :cond_14

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lc0/l;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v4

    .line 19
    :catchall_12
    move-exception p1

    .line 20
    goto :goto_4e

    .line 21
    :cond_14
    if-eqz p2, :cond_1b

    .line 22
    .line 23
    :try_start_16
    iget-wide v5, p0, Lc0/l;->c:J

    .line 24
    .line 25
    add-long/2addr v5, v1

    .line 26
    iput-wide v5, p0, Lc0/l;->c:J

    .line 27
    .line 28
    :cond_1b
    iget-object v1, p0, Lc0/l;->a:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    if-nez p2, :cond_21

    .line 31
    .line 32
    move-object v2, v4

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    new-instance v2, Lc0/k;

    .line 35
    .line 36
    invoke-direct {v2, v0, p2}, Lc0/k;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_26
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lc0/k;

    .line 44
    .line 45
    if-eqz v0, :cond_43

    .line 46
    .line 47
    iget-wide v1, p0, Lc0/l;->c:J

    .line 48
    .line 49
    iget v3, v0, Lc0/k;->b:I

    .line 50
    .line 51
    int-to-long v5, v3

    .line 52
    sub-long/2addr v1, v5

    .line 53
    iput-wide v1, p0, Lc0/l;->c:J

    .line 54
    .line 55
    iget-object v1, v0, Lc0/k;->a:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_43

    .line 62
    .line 63
    iget-object p2, v0, Lc0/k;->a:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lc0/l;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    iget-wide p1, p0, Lc0/l;->b:J

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Lc0/l;->e(J)V

    .line 71
    .line 72
    .line 73
    if-eqz v0, :cond_4c

    .line 74
    .line 75
    iget-object v4, v0, Lc0/k;->a:Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_12

    .line 76
    .line 77
    :cond_4c
    monitor-exit p0

    .line 78
    return-object v4

    .line 79
    :goto_4e
    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_12

    .line 80
    throw p1
.end method

.method public final declared-synchronized e(J)V
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lc0/l;->c:J

    .line 3
    .line 4
    cmp-long v0, v0, p1

    .line 5
    .line 6
    if-lez v0, :cond_34

    .line 7
    .line 8
    iget-object v0, p0, Lc0/l;->a:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lc0/k;

    .line 29
    .line 30
    iget-wide v3, p0, Lc0/l;->c:J

    .line 31
    .line 32
    iget v5, v2, Lc0/k;->b:I

    .line 33
    .line 34
    int-to-long v5, v5

    .line 35
    sub-long/2addr v3, v5

    .line 36
    iput-wide v3, p0, Lc0/l;->c:J

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    iget-object v0, v2, Lc0/k;->a:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Lc0/l;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_32

    .line 56
    throw p1
.end method
