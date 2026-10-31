.class public final Lp7/a;
.super Lo7/d0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lp7/c;


# direct methods
.method public constructor <init>(Lp7/c;I)V
    .registers 3

    .line 1
    iput p2, p0, Lp7/a;->d:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lp7/a;->e:Lp7/c;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p2, p1}, Lo7/d0;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lw7/b;->b()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iput-object p1, p0, Lp7/a;->e:Lp7/c;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-direct {p0, p2, p1}, Lo7/d0;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lw7/b;->b()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget v0, p0, Lp7/a;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_98

    .line 4
    .line 5
    .line 6
    new-instance v0, Ll9/l;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lw7/b;->c()V

    .line 12
    .line 13
    .line 14
    :try_start_d
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lp7/a;->e:Lp7/c;

    .line 20
    .line 21
    iget-object v2, v2, Lp7/c;->b:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_38

    .line 24
    :try_start_17
    iget-object v3, p0, Lp7/a;->e:Lp7/c;

    .line 25
    .line 26
    iget-object v3, v3, Lp7/c;->c:Ll9/l;

    .line 27
    .line 28
    iget-wide v4, v3, Ll9/l;->c:J

    .line 29
    .line 30
    invoke-virtual {v0, v3, v4, v5}, Ll9/l;->write(Ll9/l;J)V

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lp7/a;->e:Lp7/c;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    iput-boolean v4, v3, Lp7/c;->h:Z

    .line 37
    .line 38
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_3a

    .line 39
    :try_start_26
    iget-object v2, v3, Lp7/c;->j:Ll9/e0;

    .line 40
    .line 41
    iget-wide v3, v0, Ll9/l;->c:J

    .line 42
    .line 43
    invoke-interface {v2, v0, v3, v4}, Ll9/e0;->write(Ll9/l;J)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lp7/a;->e:Lp7/c;

    .line 47
    .line 48
    iget-object v0, v0, Lp7/c;->j:Ll9/e0;

    .line 49
    .line 50
    invoke-interface {v0}, Ll9/e0;->flush()V
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_38

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_38
    move-exception v0

    .line 58
    goto :goto_3d

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    .line 61
    :try_start_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_38

    .line 62
    :goto_3d
    :try_start_3d
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    .line 65
    .line 66
    .line 67
    goto :goto_47

    .line 68
    :catchall_43
    move-exception v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_47
    throw v0

    .line 73
    :pswitch_48
    new-instance v0, Ll9/l;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lw7/b;->c()V

    .line 79
    .line 80
    .line 81
    :try_start_50
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lp7/a;->e:Lp7/c;

    .line 87
    .line 88
    iget-object v2, v2, Lp7/c;->b:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_88

    .line 91
    :try_start_5a
    iget-object v3, p0, Lp7/a;->e:Lp7/c;

    .line 92
    .line 93
    iget-object v3, v3, Lp7/c;->c:Ll9/l;

    .line 94
    .line 95
    invoke-virtual {v3}, Ll9/l;->y()J

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    invoke-virtual {v0, v3, v4, v5}, Ll9/l;->write(Ll9/l;J)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lp7/a;->e:Lp7/c;

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    iput-boolean v4, v3, Lp7/c;->g:Z

    .line 106
    .line 107
    iget v4, v3, Lp7/c;->n:I

    .line 108
    .line 109
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_8a

    .line 110
    :try_start_6d
    iget-object v2, v3, Lp7/c;->j:Ll9/e0;

    .line 111
    .line 112
    iget-wide v5, v0, Ll9/l;->c:J

    .line 113
    .line 114
    invoke-interface {v2, v0, v5, v6}, Ll9/e0;->write(Ll9/l;J)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lp7/a;->e:Lp7/c;

    .line 118
    .line 119
    iget-object v0, v0, Lp7/c;->b:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v0
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_88

    .line 122
    :try_start_79
    iget-object v2, p0, Lp7/a;->e:Lp7/c;

    .line 123
    .line 124
    iget v3, v2, Lp7/c;->n:I

    .line 125
    .line 126
    sub-int/2addr v3, v4

    .line 127
    iput v3, v2, Lp7/c;->n:I

    .line 128
    .line 129
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_85

    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catchall_85
    move-exception v1

    .line 135
    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    .line 136
    :try_start_87
    throw v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_88

    .line 137
    :catchall_88
    move-exception v0

    .line 138
    goto :goto_8d

    .line 139
    :catchall_8a
    move-exception v0

    .line 140
    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    .line 141
    :try_start_8c
    throw v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_88

    .line 142
    :goto_8d
    :try_start_8d
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_93

    .line 145
    .line 146
    .line 147
    goto :goto_97

    .line 148
    :catchall_93
    move-exception v1

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    :goto_97
    throw v0

    .line 153
    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_48
    .end packed-switch
.end method
