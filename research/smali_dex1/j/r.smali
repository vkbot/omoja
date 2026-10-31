.class public final Lj/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final h:Z


# instance fields
.field public final a:Lcom/bumptech/glide/f;

.field public final b:Lw7/c;

.field public final c:Ll/f;

.field public final d:Lj/q;

.field public final e:Ld6/d;

.field public final f:Lj/o;

.field public final g:Lb1/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "Engine"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lj/r;->h:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ll/f;Lr5/c;Lm/e;Lm/e;Lm/e;Lm/e;)V
    .registers 16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/r;->c:Ll/f;

    .line 5
    .line 6
    new-instance v0, Lc0/h;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Lc0/h;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p2, Lb1/m;

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    invoke-direct {p2, v1}, Lb1/m;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lj/r;->g:Lb1/m;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_13
    monitor-enter p2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_58

    .line 21
    :try_start_14
    iput-object p0, p2, Lb1/m;->f:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_5c

    .line 24
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_58

    .line 25
    new-instance p2, Lw7/c;

    .line 26
    .line 27
    const/16 v1, 0xb

    .line 28
    .line 29
    invoke-direct {p2, v1}, Lw7/c;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lj/r;->b:Lw7/c;

    .line 33
    .line 34
    new-instance p2, Lcom/bumptech/glide/f;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-direct {p2, v1}, Lcom/bumptech/glide/f;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lj/r;->a:Lcom/bumptech/glide/f;

    .line 41
    .line 42
    new-instance v2, Lj/q;

    .line 43
    .line 44
    move-object v8, p0

    .line 45
    move-object v7, p0

    .line 46
    move-object v3, p3

    .line 47
    move-object v4, p4

    .line 48
    move-object v5, p5

    .line 49
    move-object v6, p6

    .line 50
    invoke-direct/range {v2 .. v8}, Lj/q;-><init>(Lm/e;Lm/e;Lm/e;Lm/e;Lj/r;Lj/r;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, v7, Lj/r;->d:Lj/q;

    .line 54
    .line 55
    new-instance p2, Lj/o;

    .line 56
    .line 57
    invoke-direct {p2, v0}, Lj/o;-><init>(Lc0/h;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, v7, Lj/r;->f:Lj/o;

    .line 61
    .line 62
    new-instance p2, Ld6/d;

    .line 63
    .line 64
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance p3, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    new-instance p5, Lb4/c;

    .line 74
    .line 75
    const/4 p6, 0x1

    .line 76
    invoke-direct {p5, p6}, Lb4/c;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p3, p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 80
    .line 81
    .line 82
    iput-object p3, p2, Ld6/d;->b:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object p2, v7, Lj/r;->e:Ld6/d;

    .line 85
    .line 86
    iput-object v7, p1, Ll/f;->d:Lj/r;

    .line 87
    .line 88
    return-void

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    move-object v7, p0

    .line 91
    :goto_5a
    move-object p1, v0

    .line 92
    goto :goto_65

    .line 93
    :catchall_5c
    move-exception v0

    .line 94
    move-object v7, p0

    .line 95
    :goto_5e
    move-object p1, v0

    .line 96
    :try_start_5f
    monitor-exit p2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_63

    .line 97
    :try_start_60
    throw p1

    .line 98
    :catchall_61
    move-exception v0

    .line 99
    goto :goto_5a

    .line 100
    :catchall_63
    move-exception v0

    .line 101
    goto :goto_5e

    .line 102
    :goto_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_61

    .line 103
    throw p1
.end method

.method public static c(Ljava/lang/String;JLj/w;)V
    .registers 5

    .line 1
    const-string v0, " in "

    .line 2
    .line 3
    invoke-static {p0, v0}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1, p2}, Lc0/j;->a(J)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "ms, key: "

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "Engine"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static f(Lj/d0;)V
    .registers 2

    .line 1
    instance-of v0, p0, Lj/x;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    check-cast p0, Lj/x;

    .line 6
    .line 7
    invoke-virtual {p0}, Lj/x;->c()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    const-string p0, "Cannot release anything but an EngineResource"

    .line 12
    .line 13
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lh/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lj/m;Lc0/c;ZZLh/h;ZZLy/f;Lc0/f;)La5/h;
    .registers 41

    move-object/from16 v2, p0

    .line 1
    sget-boolean v0, Lj/r;->h:Z

    if-eqz v0, :cond_d

    sget v0, Lc0/j;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    .line 3
    :goto_f
    iget-object v3, v2, Lj/r;->b:Lw7/c;

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v4, Lj/w;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v9, p10

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v12}, Lj/w;-><init>(Ljava/lang/Object;Lh/e;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lh/h;)V

    .line 6
    monitor-enter p0

    move/from16 v3, p14

    .line 7
    :try_start_2c
    invoke-virtual {v2, v4, v3, v0, v1}, Lj/r;->b(Lj/w;ZJ)Lj/x;

    move-result-object v5

    if-nez v5, :cond_60

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-wide/from16 v21, v0

    move/from16 v16, v3

    move-object/from16 v20, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 8
    invoke-virtual/range {v2 .. v22}, Lj/r;->g(Lcom/bumptech/glide/e;Ljava/lang/Object;Lh/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lj/m;Ljava/util/Map;ZZLh/h;ZZLy/f;Ljava/util/concurrent/Executor;Lj/w;J)La5/h;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_5e
    move-exception v0

    goto :goto_6a

    :cond_60
    move-object v0, v5

    .line 9
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_2c .. :try_end_62} :catchall_5e

    const/4 v1, 0x5

    move-object/from16 v2, p16

    .line 10
    invoke-virtual {v2, v0, v1}, Ly/f;->g(Lj/d0;I)V

    const/4 v0, 0x0

    return-object v0

    .line 11
    :goto_6a
    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_5e

    throw v0
.end method

.method public final b(Lj/w;ZJ)Lj/x;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_6

    .line 3
    .line 4
    move-object v6, p0

    .line 5
    goto/16 :goto_88

    .line 6
    .line 7
    :cond_6
    iget-object p2, p0, Lj/r;->g:Lb1/m;

    .line 8
    .line 9
    monitor-enter p2

    .line 10
    :try_start_9
    iget-object v1, p2, Lb1/m;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lj/b;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_90

    .line 19
    .line 20
    if-nez v1, :cond_18

    .line 21
    .line 22
    monitor-exit p2

    .line 23
    move-object v2, v0

    .line 24
    goto :goto_2a

    .line 25
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lj/x;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_90

    .line 30
    .line 31
    if-nez v2, :cond_29

    .line 32
    .line 33
    :try_start_20
    invoke-virtual {p2, v1}, Lb1/m;->b(Lj/b;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 34
    .line 35
    .line 36
    goto :goto_29

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    move-object v6, p0

    .line 40
    goto/16 :goto_93

    .line 41
    .line 42
    :cond_29
    :goto_29
    monitor-exit p2

    .line 43
    :goto_2a
    if-eqz v2, :cond_2f

    .line 44
    .line 45
    invoke-virtual {v2}, Lj/x;->a()V

    .line 46
    .line 47
    .line 48
    :cond_2f
    if-eqz v2, :cond_3b

    .line 49
    .line 50
    sget-boolean p2, Lj/r;->h:Z

    .line 51
    .line 52
    if-eqz p2, :cond_3a

    .line 53
    .line 54
    const-string p2, "Loaded resource from active resources"

    .line 55
    .line 56
    invoke-static {p2, p3, p4, p1}, Lj/r;->c(Ljava/lang/String;JLj/w;)V

    .line 57
    .line 58
    .line 59
    :cond_3a
    return-object v2

    .line 60
    :cond_3b
    iget-object v1, p0, Lj/r;->c:Ll/f;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_3e
    iget-object p2, v1, Lc0/l;->a:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lc0/k;
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_89

    .line 70
    .line 71
    if-nez p2, :cond_4b

    .line 72
    .line 73
    monitor-exit v1

    .line 74
    move-object p2, v0

    .line 75
    goto :goto_56

    .line 76
    :cond_4b
    :try_start_4b
    iget-wide v2, v1, Lc0/l;->c:J

    .line 77
    .line 78
    iget v4, p2, Lc0/k;->b:I

    .line 79
    .line 80
    int-to-long v4, v4

    .line 81
    sub-long/2addr v2, v4

    .line 82
    iput-wide v2, v1, Lc0/l;->c:J

    .line 83
    .line 84
    iget-object p2, p2, Lc0/k;->a:Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_89

    .line 85
    .line 86
    monitor-exit v1

    .line 87
    :goto_56
    move-object v2, p2

    .line 88
    check-cast v2, Lj/d0;

    .line 89
    .line 90
    if-nez v2, :cond_5f

    .line 91
    .line 92
    move-object v6, p0

    .line 93
    move-object v5, p1

    .line 94
    move-object v2, v0

    .line 95
    goto :goto_72

    .line 96
    :cond_5f
    instance-of p2, v2, Lj/x;

    .line 97
    .line 98
    if-eqz p2, :cond_68

    .line 99
    .line 100
    check-cast v2, Lj/x;

    .line 101
    .line 102
    move-object v6, p0

    .line 103
    move-object v5, p1

    .line 104
    goto :goto_72

    .line 105
    :cond_68
    new-instance v1, Lj/x;

    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    const/4 v4, 0x1

    .line 109
    move-object v6, p0

    .line 110
    move-object v5, p1

    .line 111
    invoke-direct/range {v1 .. v6}, Lj/x;-><init>(Lj/d0;ZZLh/e;Lj/r;)V

    .line 112
    .line 113
    .line 114
    move-object v2, v1

    .line 115
    :goto_72
    if-eqz v2, :cond_7c

    .line 116
    .line 117
    invoke-virtual {v2}, Lj/x;->a()V

    .line 118
    .line 119
    .line 120
    iget-object p1, v6, Lj/r;->g:Lb1/m;

    .line 121
    .line 122
    invoke-virtual {p1, v5, v2}, Lb1/m;->a(Lh/e;Lj/x;)V

    .line 123
    .line 124
    .line 125
    :cond_7c
    if-eqz v2, :cond_88

    .line 126
    .line 127
    sget-boolean p1, Lj/r;->h:Z

    .line 128
    .line 129
    if-eqz p1, :cond_87

    .line 130
    .line 131
    const-string p1, "Loaded resource from cache"

    .line 132
    .line 133
    invoke-static {p1, p3, p4, v5}, Lj/r;->c(Ljava/lang/String;JLj/w;)V

    .line 134
    .line 135
    .line 136
    :cond_87
    return-object v2

    .line 137
    :cond_88
    :goto_88
    return-object v0

    .line 138
    :catchall_89
    move-exception v0

    .line 139
    move-object v6, p0

    .line 140
    :goto_8b
    move-object p1, v0

    .line 141
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    .line 142
    throw p1

    .line 143
    :catchall_8e
    move-exception v0

    .line 144
    goto :goto_8b

    .line 145
    :catchall_90
    move-exception v0

    .line 146
    move-object v6, p0

    .line 147
    :goto_92
    move-object p1, v0

    .line 148
    :goto_93
    :try_start_93
    monitor-exit p2
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_95

    .line 149
    throw p1

    .line 150
    :catchall_95
    move-exception v0

    .line 151
    goto :goto_92
.end method

.method public final declared-synchronized d(Lj/v;Lh/e;Lj/x;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p3, :cond_f

    .line 3
    .line 4
    :try_start_3
    iget-boolean v0, p3, Lj/x;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    iget-object v0, p0, Lj/r;->g:Lb1/m;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lb1/m;->a(Lh/e;Lj/x;)V

    .line 11
    .line 12
    .line 13
    goto :goto_f

    .line 14
    :catchall_d
    move-exception p1

    .line 15
    goto :goto_28

    .line 16
    :cond_f
    :goto_f
    iget-object p3, p0, Lj/r;->a:Lcom/bumptech/glide/f;

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object p3, p3, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_26

    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_d

    .line 37
    .line 38
    .line 39
    :cond_26
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_d

    .line 42
    throw p1
.end method

.method public final e(Lh/e;Lj/x;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lj/r;->g:Lb1/m;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, v0, Lb1/m;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lj/b;

    .line 13
    .line 14
    if-eqz v1, :cond_15

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, v1, Lj/b;->c:Lj/d0;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2a

    .line 20
    .line 21
    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    iget-boolean v0, p2, Lj/x;->b:Z

    .line 24
    .line 25
    if-eqz v0, :cond_23

    .line 26
    .line 27
    iget-object v0, p0, Lj/r;->c:Ll/f;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lc0/l;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lj/d0;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    iget-object p1, p0, Lj/r;->e:Ld6/d;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, p2, v0}, Ld6/d;->b(Lj/d0;Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .line 45
    throw p1
.end method

.method public final g(Lcom/bumptech/glide/e;Ljava/lang/Object;Lh/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lj/m;Ljava/util/Map;ZZLh/h;ZZLy/f;Ljava/util/concurrent/Executor;Lj/w;J)La5/h;
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p13

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-wide/from16 v12, p19

    .line 1
    iget-object v14, v1, Lj/r;->a:Lcom/bumptech/glide/f;

    .line 2
    iget-object v14, v14, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lj/v;

    if-eqz v14, :cond_38

    .line 4
    invoke-virtual {v14, v9, v10}, Lj/v;->a(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 5
    sget-boolean v0, Lj/r;->h:Z

    if-eqz v0, :cond_32

    .line 6
    const-string v0, "Added to existing load"

    invoke-static {v0, v12, v13, v11}, Lj/r;->c(Ljava/lang/String;JLj/w;)V

    .line 7
    :cond_32
    new-instance v0, La5/h;

    invoke-direct {v0, v1, v9, v14}, La5/h;-><init>(Lj/r;Ly/f;Lj/v;)V

    return-object v0

    .line 8
    :cond_38
    iget-object v14, v1, Lj/r;->d:Lj/q;

    .line 9
    iget-object v14, v14, Lj/q;->g:Ld0/d;

    invoke-virtual {v14}, Ld0/d;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lj/v;

    .line 10
    monitor-enter v14

    .line 11
    :try_start_43
    iput-object v11, v14, Lj/v;->l:Lj/w;

    move/from16 v15, p14

    .line 12
    iput-boolean v15, v14, Lj/v;->m:Z

    move/from16 v15, p15

    .line 13
    iput-boolean v15, v14, Lj/v;->n:Z
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_e4

    .line 14
    monitor-exit v14

    .line 15
    iget-object v15, v1, Lj/r;->f:Lj/o;

    .line 16
    iget-object v12, v15, Lj/o;->b:Ld0/d;

    invoke-virtual {v12}, Ld0/d;->acquire()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lj/k;

    .line 17
    iget v13, v15, Lj/o;->c:I

    add-int/lit8 v9, v13, 0x1

    iput v9, v15, Lj/o;->c:I

    .line 18
    iget-object v9, v12, Lj/k;->b:Lj/h;

    iget-object v15, v12, Lj/k;->e:Lc0/h;

    .line 19
    iput-object v0, v9, Lj/h;->c:Lcom/bumptech/glide/e;

    .line 20
    iput-object v2, v9, Lj/h;->d:Ljava/lang/Object;

    .line 21
    iput-object v3, v9, Lj/h;->n:Lh/e;

    .line 22
    iput v4, v9, Lj/h;->e:I

    .line 23
    iput v5, v9, Lj/h;->f:I

    .line 24
    iput-object v7, v9, Lj/h;->p:Lj/m;

    move-object/from16 v10, p6

    .line 25
    iput-object v10, v9, Lj/h;->g:Ljava/lang/Class;

    .line 26
    iput-object v15, v9, Lj/h;->h:Lc0/h;

    move-object/from16 v10, p7

    .line 27
    iput-object v10, v9, Lj/h;->k:Ljava/lang/Class;

    .line 28
    iput-object v6, v9, Lj/h;->o:Lcom/bumptech/glide/h;

    .line 29
    iput-object v8, v9, Lj/h;->i:Lh/h;

    move-object/from16 v10, p10

    .line 30
    iput-object v10, v9, Lj/h;->j:Ljava/util/Map;

    move/from16 v10, p11

    .line 31
    iput-boolean v10, v9, Lj/h;->q:Z

    move/from16 v10, p12

    .line 32
    iput-boolean v10, v9, Lj/h;->r:Z

    .line 33
    iput-object v0, v12, Lj/k;->i:Lcom/bumptech/glide/e;

    .line 34
    iput-object v3, v12, Lj/k;->j:Lh/e;

    .line 35
    iput-object v6, v12, Lj/k;->k:Lcom/bumptech/glide/h;

    .line 36
    iput-object v11, v12, Lj/k;->l:Lj/w;

    .line 37
    iput v4, v12, Lj/k;->m:I

    .line 38
    iput v5, v12, Lj/k;->n:I

    .line 39
    iput-object v7, v12, Lj/k;->o:Lj/m;

    .line 40
    iput-object v8, v12, Lj/k;->p:Lh/h;

    .line 41
    iput-object v14, v12, Lj/k;->q:Lj/v;

    .line 42
    iput v13, v12, Lj/k;->r:I

    const/4 v0, 0x1

    .line 43
    iput v0, v12, Lj/k;->E:I

    .line 44
    iput-object v2, v12, Lj/k;->t:Ljava/lang/Object;

    .line 45
    iget-object v2, v1, Lj/r;->a:Lcom/bumptech/glide/f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-object v2, v2, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 47
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    .line 48
    invoke-virtual {v14, v9, v10}, Lj/v;->a(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 49
    monitor-enter v14

    .line 50
    :try_start_b3
    iput-object v12, v14, Lj/v;->u:Lj/k;

    .line 51
    invoke-virtual {v12, v0}, Lj/k;->h(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ca

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c0

    goto :goto_ca

    .line 52
    :cond_c0
    iget-boolean v0, v14, Lj/v;->n:Z

    if-eqz v0, :cond_c7

    iget-object v0, v14, Lj/v;->j:Lm/e;

    goto :goto_cc

    :cond_c7
    iget-object v0, v14, Lj/v;->i:Lm/e;

    goto :goto_cc

    .line 53
    :cond_ca
    :goto_ca
    iget-object v0, v14, Lj/v;->h:Lm/e;

    .line 54
    :goto_cc
    invoke-virtual {v0, v12}, Lm/e;->execute(Ljava/lang/Runnable;)V
    :try_end_cf
    .catchall {:try_start_b3 .. :try_end_cf} :catchall_e1

    .line 55
    monitor-exit v14

    .line 56
    sget-boolean v0, Lj/r;->h:Z

    if-eqz v0, :cond_db

    .line 57
    const-string v0, "Started new load"

    move-wide/from16 v12, p19

    invoke-static {v0, v12, v13, v11}, Lj/r;->c(Ljava/lang/String;JLj/w;)V

    .line 58
    :cond_db
    new-instance v0, La5/h;

    invoke-direct {v0, v1, v9, v14}, La5/h;-><init>(Lj/r;Ly/f;Lj/v;)V

    return-object v0

    :catchall_e1
    move-exception v0

    .line 59
    :try_start_e2
    monitor-exit v14
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    throw v0

    :catchall_e4
    move-exception v0

    .line 60
    :try_start_e5
    monitor-exit v14
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v0
.end method
