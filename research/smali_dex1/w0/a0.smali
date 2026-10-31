.class public abstract Lw0/a0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final a:Ljava/lang/String;

.field public static volatile b:Lw0/z;

.field public static c:Z

.field public static volatile d:Lw0/y;

.field public static final e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_20

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_2e

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lw0/a0;->a:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lw0/z;->b:Lw0/z;

    .line 22
    .line 23
    sput-object v0, Lw0/a0;->b:Lw0/z;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lw0/a0;->e:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void

    .line 33
    :array_20
    .array-data 1
        -0xet
        0x2dt
        0x43t
        0x72t
        -0x5dt
        -0x50t
        0x4ct
        0xat
        -0x1dt
        0x2bt
        0x44t
        0x74t
        -0x67t
        -0x7ct
        0x40t
        0xat
        -0x20t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    nop

    .line 47
    :array_2e
    .array-data 1
        -0x7ct
        0x42t
        0x2at
        0x11t
        -0x3at
        -0x11t
        0x29t
        0x64t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lw0/y;
    .registers 3

    .line 1
    invoke-static {}, Lw0/a0;->f()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lw0/a0;->b:Lw0/z;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_2b

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_15

    .line 15
    .line 16
    new-instance v0, Lw0/g;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lw0/g;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-static {p0}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_21

    .line 27
    .line 28
    new-instance v0, Lw0/x;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lw0/x;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_21
    sget-object v0, Lw0/z;->b:Lw0/z;

    .line 35
    .line 36
    sput-object v0, Lw0/a0;->b:Lw0/z;

    .line 37
    .line 38
    new-instance v0, Lw0/g;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lw0/g;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2b
    invoke-static {p0}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_37

    .line 49
    .line 50
    new-instance v0, Lw0/o;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lw0/o;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_37
    sget-object v0, Lw0/z;->b:Lw0/z;

    .line 57
    .line 58
    sput-object v0, Lw0/a0;->b:Lw0/z;

    .line 59
    .line 60
    new-instance v0, Lw0/g;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lw0/g;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static declared-synchronized b()V
    .registers 2

    .line 1
    const-class v0, Lw0/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lw0/a0;->d:Lw0/y;

    .line 5
    .line 6
    if-eqz v1, :cond_f

    .line 7
    .line 8
    sget-object v1, Lw0/a0;->d:Lw0/y;

    .line 9
    .line 10
    invoke-interface {v1}, Lw0/y;->b()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    .line 11
    .line 12
    .line 13
    goto :goto_f

    .line 14
    :catchall_d
    move-exception v1

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    :goto_f
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_11
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_d

    .line 19
    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lw0/y;
    .registers 3

    .line 1
    const-class v0, Lw0/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lw0/a0;->d:Lw0/y;

    .line 5
    .line 6
    if-nez v1, :cond_17

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lw0/a0;->a(Landroid/content/Context;)Lw0/y;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lw0/a0;->d:Lw0/y;

    .line 17
    .line 18
    invoke-static {p0}, Lw0/a0;->g(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    goto :goto_17

    .line 22
    :catchall_15
    move-exception p0

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    :goto_17
    sget-object p0, Lw0/a0;->d:Lw0/y;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_15

    .line 29
    throw p0
.end method

.method public static declared-synchronized d()Lw0/z;
    .registers 2

    .line 1
    const-class v0, Lw0/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lw0/a0;->f()V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lw0/a0;->b:Lw0/z;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    .line 13
    throw v1
.end method

.method public static e()Z
    .registers 2

    .line 1
    sget-object v0, Lw0/a0;->b:Lw0/z;

    .line 2
    .line 3
    sget-object v1, Lw0/z;->d:Lw0/z;

    .line 4
    .line 5
    if-ne v0, v1, :cond_8

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static f()V
    .registers 3

    .line 1
    sget-boolean v0, Lw0/a0;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lw0/a0;->a:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Lw0/z;->b:Lw0/z;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :try_start_15
    invoke-static {v0}, Lw0/z;->valueOf(Ljava/lang/String;)Lw0/z;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lw0/a0;->b:Lw0/z;
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1b} :catch_1c

    .line 27
    .line 28
    goto :goto_20

    .line 29
    :catch_1c
    sget-object v0, Lw0/z;->b:Lw0/z;

    .line 30
    .line 31
    sput-object v0, Lw0/a0;->b:Lw0/z;

    .line 32
    .line 33
    :goto_20
    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lw0/a0;->c:Z

    .line 35
    .line 36
    return-void
.end method

.method public static declared-synchronized g(Landroid/content/Context;)V
    .registers 5

    .line 1
    const-class v0, Lw0/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lw0/a0;->b()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x12

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    fill-array-data v2, :array_32

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    new-array v3, v3, [B

    .line 21
    .line 22
    fill-array-data v3, :array_40

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v1, v2, v3}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2d

    .line 35
    .line 36
    invoke-static {p0}, Lw0/a0;->c(Landroid/content/Context;)Lw0/y;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Lw0/y;->c()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    .line 41
    .line 42
    .line 43
    goto :goto_2d

    .line 44
    :catchall_2b
    move-exception p0

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    :goto_2d
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2b

    .line 49
    throw p0

    .line 50
    nop

    .line 51
    :array_32
    .array-data 1
        -0x20t
        0x78t
        -0x75t
        0x54t
        -0x19t
        0x34t
        0x6ct
        0x6bt
        -0x1bt
        0x69t
        -0x6at
        0x6et
        -0x27t
        0x2ct
        0x6ft
        0x5dt
        -0x40t
        0x5ft
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    nop

    .line 65
    :array_40
    .array-data 1
        -0x6dt
        0x8t
        -0x1et
        0xbt
        -0x7at
        0x5ft
        0x18t
        0x2t
    .end array-data
.end method

.method public static declared-synchronized h(Landroid/content/Context;Lw0/z;)V
    .registers 5

    .line 1
    const-class v0, Lw0/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_7

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    sget-object v1, Lw0/z;->c:Lw0/z;

    .line 9
    .line 10
    if-eq p1, v1, :cond_12

    .line 11
    .line 12
    sget-object v1, Lw0/z;->d:Lw0/z;

    .line 13
    .line 14
    if-ne p1, v1, :cond_1a

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception p0

    .line 18
    goto :goto_52

    .line 19
    :cond_12
    :goto_12
    invoke-static {p0}, Lw0/a;->f(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1a

    .line 24
    .line 25
    sget-object p1, Lw0/z;->b:Lw0/z;

    .line 26
    .line 27
    :cond_1a
    sget-boolean v1, Lw0/a0;->c:Z

    .line 28
    .line 29
    if-eqz v1, :cond_28

    .line 30
    .line 31
    sget-object v1, Lw0/a0;->b:Lw0/z;

    .line 32
    .line 33
    if-ne v1, p1, :cond_28

    .line 34
    .line 35
    sget-object v1, Lw0/a0;->d:Lw0/y;
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_10

    .line 36
    .line 37
    if-eqz v1, :cond_28

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :cond_28
    :try_start_28
    invoke-static {}, Lw0/a0;->b()V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lw0/a0;->d:Lw0/y;

    .line 45
    .line 46
    instance-of v1, v1, Lw0/x;

    .line 47
    .line 48
    if-eqz v1, :cond_38

    .line 49
    .line 50
    sget-object v1, Lw0/a0;->d:Lw0/y;

    .line 51
    .line 52
    check-cast v1, Lw0/x;

    .line 53
    .line 54
    invoke-virtual {v1}, Lw0/x;->t()V

    .line 55
    .line 56
    .line 57
    :cond_38
    sput-object p1, Lw0/a0;->b:Lw0/z;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    sput-boolean v1, Lw0/a0;->c:Z

    .line 61
    .line 62
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    sget-object v2, Lw0/a0;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, v2, p1}, Lu0/a;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    sput-object p1, Lw0/a0;->d:Lw0/y;

    .line 77
    .line 78
    invoke-static {p0}, Lw0/a0;->g(Landroid/content/Context;)V
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_10

    .line 79
    .line 80
    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_10

    .line 84
    throw p0
.end method
