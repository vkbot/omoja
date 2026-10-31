.class public final Lb2/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public a:J

.field public b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lw7/c;->c:Lw7/c;

    .line 5
    .line 6
    if-nez v0, :cond_12

    .line 7
    .line 8
    sget-object v0, Ll5/k;->b:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    new-instance v0, Lw7/c;

    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lw7/c;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lw7/c;->c:Lw7/c;

    .line 18
    .line 19
    :cond_12
    sget-object v0, Lw7/c;->c:Lw7/c;

    .line 20
    .line 21
    sget-object v1, Ll5/k;->c:Ll5/k;

    .line 22
    .line 23
    if-nez v1, :cond_1f

    .line 24
    .line 25
    new-instance v1, Ll5/k;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ll5/k;-><init>(Lw7/c;)V

    .line 28
    .line 29
    .line 30
    sput-object v1, Ll5/k;->c:Ll5/k;

    .line 31
    .line 32
    :cond_1f
    sget-object v0, Ll5/k;->c:Ll5/k;

    .line 33
    .line 34
    iput-object v0, p0, Lb2/b;->c:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/net/URL;J)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lb2/b;->b:I

    .line 39
    iput-object p2, p0, Lb2/b;->c:Ljava/lang/Object;

    .line 40
    iput-wide p3, p0, Lb2/b;->a:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Lb2/b;->b:I

    .line 3
    .line 4
    if-eqz v0, :cond_1d

    .line 5
    .line 6
    iget-object v0, p0, Lb2/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ll5/k;

    .line 9
    .line 10
    iget-object v0, v0, Ll5/k;->a:Lw7/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lb2/b;->a:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-lez v0, :cond_19

    .line 24
    .line 25
    goto :goto_1d

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 31
    :goto_1e
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1b

    .line 34
    throw v0
.end method

.method public declared-synchronized b(I)V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0xc8

    .line 3
    .line 4
    if-lt p1, v0, :cond_9

    .line 5
    .line 6
    const/16 v0, 0x12c

    .line 7
    .line 8
    if-lt p1, v0, :cond_69

    .line 9
    .line 10
    :cond_9
    const/16 v0, 0x191

    .line 11
    .line 12
    if-eq p1, v0, :cond_69

    .line 13
    .line 14
    const/16 v0, 0x194

    .line 15
    .line 16
    if-ne p1, v0, :cond_12

    .line 17
    .line 18
    goto :goto_69

    .line 19
    :cond_12
    :try_start_12
    iget v0, p0, Lb2/b;->b:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput v0, p0, Lb2/b;->b:I

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    const/16 v0, 0x1ad

    .line 27
    .line 28
    if-eq p1, v0, :cond_2b

    .line 29
    .line 30
    const/16 v0, 0x1f4

    .line 31
    .line 32
    if-lt p1, v0, :cond_26

    .line 33
    .line 34
    const/16 v0, 0x258

    .line 35
    .line 36
    if-ge p1, v0, :cond_26

    .line 37
    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_64

    .line 40
    const-wide/32 v0, 0x5265c00

    .line 41
    .line 42
    .line 43
    goto :goto_52

    .line 44
    :cond_2b
    :goto_2b
    :try_start_2b
    iget p1, p0, Lb2/b;->b:I

    .line 45
    .line 46
    int-to-double v0, p1

    .line 47
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 48
    .line 49
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    iget-object p1, p0, Lb2/b;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ll5/k;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    mul-double/2addr v2, v4

    .line 70
    double-to-long v2, v2

    .line 71
    long-to-double v2, v2

    .line 72
    add-double/2addr v0, v2

    .line 73
    const-wide/32 v2, 0x1b7740

    .line 74
    .line 75
    .line 76
    long-to-double v2, v2

    .line 77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 78
    .line 79
    .line 80
    move-result-wide v0
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_66

    .line 81
    double-to-long v0, v0

    .line 82
    :try_start_51
    monitor-exit p0

    .line 83
    :goto_52
    iget-object p1, p0, Lb2/b;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast p1, Ll5/k;

    .line 86
    .line 87
    iget-object p1, p1, Ll5/k;->a:Lw7/c;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    add-long/2addr v2, v0

    .line 97
    iput-wide v2, p0, Lb2/b;->a:J
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_64

    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :catchall_64
    move-exception p1

    .line 102
    goto :goto_73

    .line 103
    :catchall_66
    move-exception p1

    .line 104
    :try_start_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    .line 105
    :try_start_68
    throw p1

    .line 106
    :cond_69
    :goto_69
    monitor-enter p0
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_64

    .line 107
    const/4 p1, 0x0

    .line 108
    :try_start_6b
    iput p1, p0, Lb2/b;->b:I
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_70

    .line 109
    .line 110
    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_64

    .line 111
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_70
    move-exception p1

    .line 114
    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .line 115
    :try_start_72
    throw p1

    .line 116
    :goto_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_64

    .line 117
    throw p1
.end method
