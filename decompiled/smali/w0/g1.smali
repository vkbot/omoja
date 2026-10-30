.class public final Lw0/g1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final k:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final a:Lq0/f;

.field public final b:Lw0/e1;

.field public final c:Lw0/f1;

.field public final d:Lw0/f1;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw0/g1;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lq0/f;)V
    .locals 2

    .line 1
    new-instance v0, Lw0/e1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lw0/f1;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lw0/g1;->c:Lw0/f1;

    .line 15
    .line 16
    new-instance v1, Lw0/f1;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lw0/g1;->d:Lw0/f1;

    .line 22
    .line 23
    iput-object p1, p0, Lw0/g1;->a:Lq0/f;

    .line 24
    .line 25
    iput-object v0, p0, Lw0/g1;->b:Lw0/e1;

    .line 26
    .line 27
    return-void
.end method

.method public static f(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-lez p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p0, -0x1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    add-int/lit8 p0, p0, -0x1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lt5/e;->h(Ljava/lang/String;Lt5/b;)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    instance-of v0, p2, Ljava/lang/Number;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    move-object v0, p2

    .line 23
    check-cast v0, Ljava/lang/Number;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Double;->isFinite(D)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v1, 0x4b0

    .line 48
    .line 49
    if-le v0, v1, :cond_3

    .line 50
    .line 51
    invoke-static {v1, p2}, Lw0/g1;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const/16 v0, 0x9

    .line 56
    .line 57
    new-array v0, v0, [B

    .line 58
    .line 59
    fill-array-data v0, :array_0

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x8

    .line 63
    .line 64
    new-array v1, v1, [B

    .line 65
    .line 66
    fill-array-data v1, :array_1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p0, p1, p2}, Lt5/e;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 1
        -0x19t
        0x70t
        0x6ft
        0x65t
        0x12t
        0x5t
        -0x69t
        -0x3et
        -0x9t
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    nop

    .line 93
    :array_1
    .array-data 1
        -0x6dt
        0x2t
        0x1at
        0xbt
        0x71t
        0x64t
        -0x1dt
        -0x59t
    .end array-data
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    new-array v2, v1, [B

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x7

    .line 25
    new-array v0, v0, [B

    .line 26
    .line 27
    fill-array-data v0, :array_2

    .line 28
    .line 29
    .line 30
    new-array v2, v1, [B

    .line 31
    .line 32
    fill-array-data v2, :array_3

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const/16 v0, 0x9

    .line 46
    .line 47
    new-array v2, v0, [B

    .line 48
    .line 49
    fill-array-data v2, :array_4

    .line 50
    .line 51
    .line 52
    new-array v3, v1, [B

    .line 53
    .line 54
    fill-array-data v3, :array_5

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    new-array v0, v0, [B

    .line 68
    .line 69
    fill-array-data v0, :array_6

    .line 70
    .line 71
    .line 72
    new-array v1, v1, [B

    .line 73
    .line 74
    fill-array-data v1, :array_7

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 p0, 0x0

    .line 89
    return p0

    .line 90
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 91
    return p0

    .line 92
    nop

    .line 93
    :array_0
    .array-data 1
        0x48t
        -0x20t
        0x77t
        -0x25t
        -0x27t
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    nop

    .line 101
    :array_1
    .array-data 1
        0x2dt
        -0x6at
        0x12t
        -0x4bt
        -0x53t
        0x60t
        -0x4ft
        -0x3bt
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    :array_2
    .array-data 1
        -0x7et
        0x4dt
        0x7at
        0x76t
        -0x10t
        -0x67t
        0x3ct
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_3
    .array-data 1
        -0xft
        0x28t
        0x9t
        0x5t
        -0x67t
        -0xat
        0x52t
        0x4bt
    .end array-data

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_4
    .array-data 1
        -0x74t
        -0x3ct
        0x53t
        0x1ft
        0x19t
        0xct
        -0x67t
        -0x46t
        -0x66t
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    nop

    .line 135
    :array_5
    .array-data 1
        -0x17t
        -0x58t
        0x32t
        0x6ft
        0x6at
        0x69t
        -0x3t
        -0x9t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_6
    .array-data 1
        -0x36t
        0x50t
        -0xft
        -0x61t
        -0x41t
        -0x2t
        -0x78t
        -0x2ct
        -0x26t
    .end array-data

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    nop

    .line 153
    :array_7
    .array-data 1
        -0x42t
        0x22t
        -0x7ct
        -0xft
        -0x24t
        -0x61t
        -0x4t
        -0x4ft
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized a(ZJJIJ)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object p1, p0, Lw0/g1;->d:Lw0/f1;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lw0/g1;->c:Lw0/f1;

    .line 10
    .line 11
    :goto_0
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p4

    .line 17
    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide p7

    .line 21
    iget-wide v2, p1, Lw0/f1;->a:J

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    add-long/2addr v2, v4

    .line 26
    iput-wide v2, p1, Lw0/f1;->a:J

    .line 27
    .line 28
    iget-wide v2, p1, Lw0/f1;->b:J

    .line 29
    .line 30
    add-long/2addr v2, p4

    .line 31
    iput-wide v2, p1, Lw0/f1;->b:J

    .line 32
    .line 33
    iget-wide v2, p1, Lw0/f1;->c:J

    .line 34
    .line 35
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p4

    .line 39
    iput-wide p4, p1, Lw0/f1;->c:J

    .line 40
    .line 41
    iget-wide p4, p1, Lw0/f1;->d:J

    .line 42
    .line 43
    add-long/2addr p4, p7

    .line 44
    iput-wide p4, p1, Lw0/f1;->d:J

    .line 45
    .line 46
    iget-wide p4, p1, Lw0/f1;->e:J

    .line 47
    .line 48
    invoke-static {p4, p5, p7, p8}, Ljava/lang/Math;->max(JJ)J

    .line 49
    .line 50
    .line 51
    move-result-wide p4

    .line 52
    iput-wide p4, p1, Lw0/f1;->e:J

    .line 53
    .line 54
    iget-wide p4, p1, Lw0/f1;->f:J

    .line 55
    .line 56
    iget-object p7, p0, Lw0/g1;->b:Lw0/e1;

    .line 57
    .line 58
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 62
    .line 63
    .line 64
    move-result-wide p7

    .line 65
    sub-long/2addr p7, p2

    .line 66
    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide p2

    .line 70
    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide p2

    .line 74
    iput-wide p2, p1, Lw0/f1;->f:J

    .line 75
    .line 76
    iget p2, p1, Lw0/f1;->h:I

    .line 77
    .line 78
    const/4 p3, 0x0

    .line 79
    invoke-static {p3, p6}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    iput p2, p1, Lw0/f1;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 91
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public final b(JLjava/lang/String;)Lt5/e;
    .locals 5

    .line 1
    new-instance v0, Lt5/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lt5/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    new-array v3, v2, [B

    .line 15
    .line 16
    fill-array-data v3, :array_1

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x50

    .line 28
    .line 29
    if-le v3, v4, :cond_0

    .line 30
    .line 31
    invoke-static {v4, p3}, Lw0/g1;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v3, p3

    .line 37
    :goto_0
    invoke-static {v0, v1, v3}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/16 v1, 0x9

    .line 45
    .line 46
    if-le p3, v4, :cond_1

    .line 47
    .line 48
    new-array p3, v1, [B

    .line 49
    .line 50
    fill-array-data p3, :array_2

    .line 51
    .line 52
    .line 53
    new-array v3, v2, [B

    .line 54
    .line 55
    fill-array-data v3, :array_3

    .line 56
    .line 57
    .line 58
    invoke-static {p3, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v0, p3, v3}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    const/4 p3, 0x7

    .line 68
    new-array p3, p3, [B

    .line 69
    .line 70
    fill-array-data p3, :array_4

    .line 71
    .line 72
    .line 73
    new-array v3, v2, [B

    .line 74
    .line 75
    fill-array-data v3, :array_5

    .line 76
    .line 77
    .line 78
    invoke-static {p3, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    iget-wide v3, p0, Lw0/g1;->e:J

    .line 83
    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, p3, v3}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 89
    .line 90
    .line 91
    new-array p3, v1, [B

    .line 92
    .line 93
    fill-array-data p3, :array_6

    .line 94
    .line 95
    .line 96
    new-array v1, v2, [B

    .line 97
    .line 98
    fill-array-data v1, :array_7

    .line 99
    .line 100
    .line 101
    invoke-static {p3, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    iget-wide v1, p0, Lw0/g1;->e:J

    .line 106
    .line 107
    const-wide/16 v3, 0x0

    .line 108
    .line 109
    cmp-long v1, v1, v3

    .line 110
    .line 111
    if-nez v1, :cond_2

    .line 112
    .line 113
    const-wide/16 p1, 0x0

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-wide v1, p0, Lw0/g1;->f:J

    .line 117
    .line 118
    sub-long/2addr p1, v1

    .line 119
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide p1

    .line 123
    long-to-double p1, p1

    .line 124
    const-wide v1, 0x412e848000000000L    # 1000000.0

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    div-double/2addr p1, v1

    .line 130
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p3, p1}, Lt5/e;->j(Ljava/lang/String;Ljava/lang/Number;)V

    .line 135
    .line 136
    .line 137
    return-object v0

    .line 138
    nop

    .line 139
    :array_0
    .array-data 1
        -0x1at
        -0x43t
        0x47t
        0x37t
        -0x74t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    nop

    .line 147
    :array_1
    .array-data 1
        -0x7dt
        -0x35t
        0x22t
        0x59t
        -0x8t
        -0x60t
        -0x7ft
        0x25t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_2
    .array-data 1
        0x2ct
        0x44t
        -0x56t
        -0x69t
        -0x6at
        -0x7at
        -0x26t
        0x1dt
        0x3ct
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    nop

    .line 165
    :array_3
    .array-data 1
        0x58t
        0x36t
        -0x21t
        -0x7t
        -0xbt
        -0x19t
        -0x52t
        0x78t
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_4
    .array-data 1
        -0x3ft
        0x2at
        0x47t
        -0xct
        0x2bt
        0x31t
        -0x33t
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_5
    .array-data 1
        -0x4et
        0x4ft
        0x34t
        -0x79t
        0x42t
        0x5et
        -0x5dt
        -0x65t
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_6
    .array-data 1
        0x7ct
        0x52t
        0x70t
        0x51t
        0x1ct
        0x1dt
        -0x47t
        -0x7et
        0x6at
    .end array-data

    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    nop

    .line 199
    :array_7
    .array-data 1
        0x19t
        0x3et
        0x11t
        0x21t
        0x6ft
        0x78t
        -0x23t
        -0x31t
    .end array-data
.end method

.method public final c(Lt5/e;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lt5/b;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    iget-object v1, p1, Lt5/e;->b:Lu5/e;

    .line 6
    .line 7
    :goto_0
    :try_start_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    array-length v2, v2

    .line 14
    const/16 v3, 0xdac

    .line 15
    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    if-le v2, v3, :cond_5

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v1}, Lu5/e;->entrySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lu5/c;

    .line 27
    .line 28
    invoke-virtual {v3}, Lu5/c;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x0

    .line 33
    move-object v6, v5

    .line 34
    :cond_0
    :goto_1
    move-object v7, v3

    .line 35
    check-cast v7, Lu5/b;

    .line 36
    .line 37
    invoke-virtual {v7}, Lu5/b;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    move-object v7, v3

    .line 44
    check-cast v7, Lu5/b;

    .line 45
    .line 46
    invoke-virtual {v7}, Lu5/b;->b()Lu5/d;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v8}, Lw0/g1;->h(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    check-cast v8, Lt5/b;

    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    instance-of v8, v8, Lt5/f;

    .line 79
    .line 80
    if-eqz v8, :cond_0

    .line 81
    .line 82
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lt5/b;

    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    instance-of v9, v8, Lt5/f;

    .line 92
    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    check-cast v8, Lt5/f;

    .line 96
    .line 97
    iget-object v8, v8, Lt5/f;->b:Ljava/io/Serializable;

    .line 98
    .line 99
    instance-of v8, v8, Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v8, :cond_0

    .line 102
    .line 103
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    check-cast v8, Lt5/b;

    .line 108
    .line 109
    invoke-virtual {v8}, Lt5/b;->g()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-le v9, v10, :cond_0

    .line 122
    .line 123
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    check-cast v2, Ljava/lang/String;

    .line 128
    .line 129
    move-object v5, v2

    .line 130
    move-object v2, v8

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, "Not a JSON Primitive: "

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_3
    if-eqz v5, :cond_4

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    div-int/lit8 v0, v0, 0x2

    .line 159
    .line 160
    invoke-static {v0, v2}, Lw0/g1;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v5, v0}, Lt5/e;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    if-eqz v6, :cond_5

    .line 169
    .line 170
    invoke-virtual {v1, v6}, Lu5/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lt5/b;

    .line 175
    .line 176
    :goto_2
    const/16 v0, 0x9

    .line 177
    .line 178
    new-array v0, v0, [B

    .line 179
    .line 180
    fill-array-data v0, :array_0

    .line 181
    .line 182
    .line 183
    new-array v2, v4, [B

    .line 184
    .line 185
    fill-array-data v2, :array_1

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 193
    .line 194
    invoke-virtual {p1, v0, v2}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lt5/b;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_5
    iget-object p1, p0, Lw0/g1;->a:Lq0/f;

    .line 204
    .line 205
    iget-object p1, p1, Lq0/f;->c:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Lw0/x;

    .line 208
    .line 209
    iget-object p1, p1, Lw0/x;->a:Ljava/lang/String;

    .line 210
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const/16 v2, 0xa

    .line 217
    .line 218
    new-array v2, v2, [B

    .line 219
    .line 220
    fill-array-data v2, :array_2

    .line 221
    .line 222
    .line 223
    new-array v3, v4, [B

    .line 224
    .line 225
    fill-array-data v3, :array_3

    .line 226
    .line 227
    .line 228
    invoke-static {v2, v3}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    .line 244
    .line 245
    :catch_0
    return-void

    .line 246
    nop

    .line 247
    :array_0
    .array-data 1
        0x3dt
        -0x69t
        0x2ct
        0x5dt
        -0x5ct
        0x17t
        -0xdt
        0x4at
        0x2dt
    .end array-data

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    nop

    .line 257
    :array_1
    .array-data 1
        0x49t
        -0x1bt
        0x59t
        0x33t
        -0x39t
        0x76t
        -0x79t
        0x2ft
    .end array-data

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    :array_2
    .array-data 1
        0x56t
        0x7at
        -0x77t
        0x1dt
        -0x3at
        -0x14t
        -0x56t
        0x48t
        0x67t
        0x35t
    .end array-data

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    nop

    .line 275
    :array_3
    .array-data 1
        0x0t
        0x15t
        -0x20t
        0x7et
        -0x5dt
        -0x58t
        -0x3dt
        0x29t
    .end array-data
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lw0/g1;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    const/16 v0, 0xb

    .line 13
    .line 14
    :try_start_1
    new-array v0, v0, [B

    .line 15
    .line 16
    fill-array-data v0, :array_0

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    new-array v4, v1, [B

    .line 22
    .line 23
    fill-array-data v4, :array_1

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v4, p0, Lw0/g1;->b:Lw0/e1;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    invoke-virtual {p0, v4, v5, v0}, Lw0/g1;->b(JLjava/lang/String;)Lt5/e;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v4, 0x6

    .line 44
    new-array v4, v4, [B

    .line 45
    .line 46
    fill-array-data v4, :array_2

    .line 47
    .line 48
    .line 49
    new-array v5, v1, [B

    .line 50
    .line 51
    fill-array-data v5, :array_3

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v5}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v0, v4, p1}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lw0/g1;->c:Lw0/f1;

    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    new-array v5, v4, [B

    .line 65
    .line 66
    fill-array-data v5, :array_4

    .line 67
    .line 68
    .line 69
    new-array v6, v1, [B

    .line 70
    .line 71
    fill-array-data v6, :array_5

    .line 72
    .line 73
    .line 74
    invoke-static {v5, v6}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {p1, v0, v5}, Lw0/f1;->a(Lt5/e;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lw0/g1;->d:Lw0/f1;

    .line 82
    .line 83
    new-array v4, v4, [B

    .line 84
    .line 85
    fill-array-data v4, :array_6

    .line 86
    .line 87
    .line 88
    new-array v1, v1, [B

    .line 89
    .line 90
    fill-array-data v1, :array_7

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v0, v1}, Lw0/f1;->a(Lt5/e;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iput-wide v2, p0, Lw0/g1;->e:J

    .line 101
    .line 102
    iget-object p1, p0, Lw0/g1;->c:Lw0/f1;

    .line 103
    .line 104
    invoke-virtual {p1}, Lw0/f1;->b()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lw0/g1;->d:Lw0/f1;

    .line 108
    .line 109
    invoke-virtual {p1}, Lw0/f1;->b()V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lw0/g1;->h:Z

    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lw0/g1;->j:Ljava/lang/String;

    .line 117
    .line 118
    iput-object p1, p0, Lw0/g1;->i:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lw0/g1;->c(Lt5/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    throw p1

    .line 128
    nop

    .line 129
    :array_0
    .array-data 1
        0x7at
        -0x8t
        -0x3et
        -0x3dt
        -0x18t
        0x62t
        -0x16t
        0x10t
        0x6ct
        -0xdt
        -0x2bt
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 1
        0x9t
        -0x63t
        -0x4ft
        -0x50t
        -0x7ft
        0xdt
        -0x7ct
        0x4ft
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 1
        0x35t
        -0x18t
        -0xct
        -0x7et
        -0x4et
        0x47t
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    nop

    .line 155
    :array_3
    .array-data 1
        0x47t
        -0x73t
        -0x6bt
        -0xft
        -0x23t
        0x29t
        0x7dt
        0x67t
    .end array-data

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    :array_4
    .array-data 1
        0xdt
        -0x60t
        0x40t
        0x35t
    .end array-data

    :array_5
    .array-data 1
        0x7at
        -0x3ft
        0x2bt
        0x50t
        -0x33t
        -0x1bt
        0x51t
        0x65t
    .end array-data

    :array_6
    .array-data 1
        -0x39t
        0x4dt
        -0x77t
        -0x1et
    .end array-data

    :array_7
    .array-data 1
        -0x5ft
        0x38t
        -0x1bt
        -0x72t
        -0x43t
        0x54t
        -0x65t
        0x36t
    .end array-data
.end method

.method public final varargs declared-synchronized e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lw0/g1;->b:Lw0/e1;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lw0/g1;->b(JLjava/lang/String;)Lt5/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    array-length v0, p2

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    const/16 v1, 0x18

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/16 v2, 0x8

    .line 26
    .line 27
    const/16 v3, 0x9

    .line 28
    .line 29
    if-ge v1, v0, :cond_3

    .line 30
    .line 31
    mul-int/lit8 v4, v1, 0x2

    .line 32
    .line 33
    aget-object v5, p2, v4

    .line 34
    .line 35
    instance-of v6, v5, Ljava/lang/String;

    .line 36
    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    check-cast v5, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v5}, Lw0/g1;->h(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/16 v7, 0x50

    .line 54
    .line 55
    if-le v6, v7, :cond_2

    .line 56
    .line 57
    invoke-static {v7, v5}, Lw0/g1;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-array v3, v3, [B

    .line 62
    .line 63
    fill-array-data v3, :array_0

    .line 64
    .line 65
    .line 66
    new-array v2, v2, [B

    .line 67
    .line 68
    fill-array-data v2, :array_1

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p1, v2, v3}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    aget-object v2, p2, v4

    .line 86
    .line 87
    invoke-static {p1, v5, v2}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    array-length v0, p2

    .line 94
    const/16 v1, 0x30

    .line 95
    .line 96
    if-gt v0, v1, :cond_4

    .line 97
    .line 98
    array-length p2, p2

    .line 99
    rem-int/lit8 p2, p2, 0x2

    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    :cond_4
    new-array p2, v3, [B

    .line 104
    .line 105
    fill-array-data p2, :array_2

    .line 106
    .line 107
    .line 108
    new-array v0, v2, [B

    .line 109
    .line 110
    fill-array-data v0, :array_3

    .line 111
    .line 112
    .line 113
    invoke-static {p2, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-virtual {p1, p2, v0}, Lt5/e;->i(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p0, p1}, Lw0/g1;->c(Lt5/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    monitor-exit p0

    .line 126
    return-void

    .line 127
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p1

    .line 129
    :array_0
    .array-data 1
        0x6bt
        0x65t
        0x41t
        -0x25t
        0x5t
        0x2bt
        -0xet
        -0x3et
        0x7bt
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    nop

    .line 139
    :array_1
    .array-data 1
        0x1ft
        0x17t
        0x34t
        -0x4bt
        0x66t
        0x4at
        -0x7at
        -0x59t
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 1
        0x7ft
        -0x67t
        -0x3dt
        -0x4t
        -0x12t
        0xat
        -0x3bt
        -0x17t
        0x6ft
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    nop

    .line 157
    :array_3
    .array-data 1
        0xbt
        -0x15t
        -0x4at
        -0x6et
        -0x73t
        0x6bt
        -0x4ft
        -0x74t
    .end array-data
.end method

.method public final declared-synchronized i()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lw0/g1;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lw0/g1;->b:Lw0/e1;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/4 v2, 0x5

    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    new-array v4, v3, [B

    .line 20
    .line 21
    fill-array-data v4, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    const/4 v2, 0x6

    .line 35
    new-array v2, v2, [B

    .line 36
    .line 37
    fill-array-data v2, :array_2

    .line 38
    .line 39
    .line 40
    new-array v4, v3, [B

    .line 41
    .line 42
    fill-array-data v4, :array_3

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-boolean v2, p0, Lw0/g1;->h:Z

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    iget-object v2, p0, Lw0/g1;->i:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-object v2, p0, Lw0/g1;->j:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lw0/g1;->h:Z

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-wide v4, p0, Lw0/g1;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    sub-long v4, v0, v4

    .line 87
    .line 88
    const-wide/32 v6, 0x2cb41780

    .line 89
    .line 90
    .line 91
    cmp-long v2, v4, v6

    .line 92
    .line 93
    if-gez v2, :cond_2

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :cond_2
    const/4 v2, 0x1

    .line 98
    :try_start_2
    iput-boolean v2, p0, Lw0/g1;->h:Z

    .line 99
    .line 100
    iput-wide v0, p0, Lw0/g1;->g:J

    .line 101
    .line 102
    iput-object p2, p0, Lw0/g1;->i:Ljava/lang/String;

    .line 103
    .line 104
    iput-object p3, p0, Lw0/g1;->j:Ljava/lang/String;

    .line 105
    .line 106
    :cond_3
    :goto_0
    const/16 v2, 0xa

    .line 107
    .line 108
    new-array v2, v2, [B

    .line 109
    .line 110
    fill-array-data v2, :array_4

    .line 111
    .line 112
    .line 113
    new-array v4, v3, [B

    .line 114
    .line 115
    fill-array-data v4, :array_5

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Lw0/g1;->b(JLjava/lang/String;)Lt5/e;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/4 v1, 0x4

    .line 127
    new-array v1, v1, [B

    .line 128
    .line 129
    fill-array-data v1, :array_6

    .line 130
    .line 131
    .line 132
    new-array v2, v3, [B

    .line 133
    .line 134
    fill-array-data v2, :array_7

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v0, v1, p1}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x7

    .line 145
    new-array p1, p1, [B

    .line 146
    .line 147
    fill-array-data p1, :array_8

    .line 148
    .line 149
    .line 150
    new-array v1, v3, [B

    .line 151
    .line 152
    fill-array-data v1, :array_9

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {v0, p1, p2}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    new-array p1, v3, [B

    .line 163
    .line 164
    fill-array-data p1, :array_a

    .line 165
    .line 166
    .line 167
    new-array p2, v3, [B

    .line 168
    .line 169
    fill-array-data p2, :array_b

    .line 170
    .line 171
    .line 172
    invoke-static {p1, p2}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v0, p1, p3}, Lw0/g1;->g(Lt5/e;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v0}, Lw0/g1;->c(Lt5/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .line 181
    .line 182
    monitor-exit p0

    .line 183
    return-void

    .line 184
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    throw p1

    .line 186
    nop

    .line 187
    :array_0
    .array-data 1
        0x47t
        -0x7dt
        -0x37t
        -0x40t
        0x55t
    .end array-data

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    nop

    .line 195
    :array_1
    .array-data 1
        0x21t
        -0x16t
        -0x59t
        -0x5ft
        0x39t
        0x7at
        0x40t
        0x23t
    .end array-data

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :array_2
    .array-data 1
        0x6bt
        -0x13t
        -0x72t
        0x51t
        0x75t
        -0x68t
    .end array-data

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    nop

    .line 211
    :array_3
    .array-data 1
        0x34t
        -0x75t
        -0x19t
        0x3ft
        0x14t
        -0xct
        -0x16t
        -0x78t
    .end array-data

    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_4
    .array-data 1
        0x17t
        0x28t
        0x31t
        0x6ct
        0x7ft
        -0x6bt
        0x78t
        -0x68t
        0x13t
        0x2et
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    nop

    .line 229
    :array_5
    .array-data 1
        0x63t
        0x5at
        0x50t
        0x2t
        0xct
        -0xat
        0xat
        -0xft
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :array_6
    .array-data 1
        0x65t
        -0x7ft
        -0x6dt
        -0x6bt
    .end array-data

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    :array_7
    .array-data 1
        0xet
        -0x18t
        -0x3t
        -0xft
        0x4dt
        0x61t
        -0x3dt
        0x24t
    .end array-data

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_8
    .array-data 1
        0x3at
        0x54t
        0x5bt
        0x3dt
        0x18t
        0x15t
        -0x7ct
    .end array-data

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    :array_9
    .array-data 1
        0x49t
        0x31t
        0x3ct
        0x50t
        0x7dt
        0x7bt
        -0x10t
        0x26t
    .end array-data

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :array_a
    .array-data 1
        0x1bt
        -0x59t
        0x47t
        0x30t
        -0x66t
        -0x12t
        0x41t
        0x5t
    .end array-data

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_b
    .array-data 1
        0x78t
        -0x38t
        0x2at
        0x52t
        -0xdt
        -0x80t
        0x24t
        0x61t
    .end array-data
.end method
