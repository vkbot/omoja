.class public abstract Lz8/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:[Lz8/c;

.field public c:I

.field public d:I


# virtual methods
.method public final a()Lz8/c;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lz8/a;->b:[Lz8/c;

    .line 3
    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    invoke-virtual {p0}, Lz8/a;->d()[Lz8/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lz8/a;->b:[Lz8/c;

    .line 11
    .line 12
    goto :goto_21

    .line 13
    :catchall_c
    move-exception v0

    .line 14
    goto :goto_43

    .line 15
    :cond_e
    iget v1, p0, Lz8/a;->c:I

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    if-lt v1, v2, :cond_21

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, [Lz8/c;

    .line 29
    .line 30
    iput-object v1, p0, Lz8/a;->b:[Lz8/c;

    .line 31
    .line 32
    check-cast v0, [Lz8/c;

    .line 33
    .line 34
    :cond_21
    :goto_21
    iget v1, p0, Lz8/a;->d:I

    .line 35
    .line 36
    :cond_23
    aget-object v2, v0, v1

    .line 37
    .line 38
    if-nez v2, :cond_2d

    .line 39
    .line 40
    invoke-virtual {p0}, Lz8/a;->c()Lz8/c;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    array-length v3, v0

    .line 49
    if-lt v1, v3, :cond_33

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    :cond_33
    invoke-virtual {v2, p0}, Lz8/c;->a(Lz8/a;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_23

    .line 57
    .line 58
    iput v1, p0, Lz8/a;->d:I

    .line 59
    .line 60
    iget v0, p0, Lz8/a;->c:I

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    iput v0, p0, Lz8/a;->c:I
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_c

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-object v2

    .line 68
    :goto_43
    monitor-exit p0

    .line 69
    throw v0
.end method

.method public abstract c()Lz8/c;
.end method

.method public abstract d()[Lz8/c;
.end method

.method public final e(Lz8/c;)V
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lz8/a;->c:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lz8/a;->c:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_f

    .line 10
    .line 11
    iput v1, p0, Lz8/a;->d:I

    .line 12
    .line 13
    goto :goto_f

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    goto :goto_2d

    .line 16
    :cond_f
    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lz8/c;->b(Lz8/a;)[Lkotlin/coroutines/Continuation;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_d

    .line 23
    monitor-exit p0

    .line 24
    array-length v0, p1

    .line 25
    :goto_18
    if-ge v1, v0, :cond_2c

    .line 26
    .line 27
    aget-object v2, p1, v1

    .line 28
    .line 29
    if-eqz v2, :cond_29

    .line 30
    .line 31
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 32
    .line 33
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    return-void

    .line 46
    :goto_2d
    monitor-exit p0

    .line 47
    throw p1
.end method
