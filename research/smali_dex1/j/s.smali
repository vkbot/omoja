.class public final Lj/s;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final c:Ly/f;

.field public final synthetic d:Lj/v;


# direct methods
.method public synthetic constructor <init>(Lj/v;Ly/f;I)V
    .registers 4

    .line 1
    iput p3, p0, Lj/s;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lj/s;->d:Lj/v;

    .line 4
    .line 5
    iput-object p2, p0, Lj/s;->c:Ly/f;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget v0, p0, Lj/s;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_a2

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj/s;->c:Ly/f;

    .line 7
    .line 8
    iget-object v1, v0, Ly/f;->b:Ld0/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Ld0/h;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Ly/f;->c:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    iget-object v1, p0, Lj/s;->d:Lj/v;

    .line 17
    .line 18
    monitor-enter v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_55

    .line 19
    :try_start_12
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 20
    .line 21
    iget-object v2, v2, Lj/v;->b:Lj/u;

    .line 22
    .line 23
    iget-object v3, p0, Lj/s;->c:Ly/f;

    .line 24
    .line 25
    iget-object v2, v2, Lj/u;->b:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v4, Lj/t;

    .line 28
    .line 29
    sget-object v5, Lc0/g;->b:Lc0/f;

    .line 30
    .line 31
    invoke-direct {v4, v3, v5}, Lj/t;-><init>(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_4d

    .line 39
    .line 40
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 41
    .line 42
    iget-object v2, v2, Lj/v;->t:Lj/x;

    .line 43
    .line 44
    invoke-virtual {v2}, Lj/x;->a()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 48
    .line 49
    iget-object v3, p0, Lj/s;->c:Ly/f;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_35
    .catchall {:try_start_12 .. :try_end_35} :catchall_44

    .line 52
    .line 53
    .line 54
    :try_start_35
    iget-object v4, v2, Lj/v;->t:Lj/x;

    .line 55
    .line 56
    iget v2, v2, Lj/v;->p:I

    .line 57
    .line 58
    invoke-virtual {v3, v4, v2}, Ly/f;->g(Lj/d0;I)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_46

    .line 59
    .line 60
    .line 61
    :try_start_3c
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 62
    .line 63
    iget-object v3, p0, Lj/s;->c:Ly/f;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lj/v;->g(Ly/f;)V

    .line 66
    .line 67
    .line 68
    goto :goto_4d

    .line 69
    :catchall_44
    move-exception v2

    .line 70
    goto :goto_57

    .line 71
    :catchall_46
    move-exception v2

    .line 72
    new-instance v3, Lj/c;

    .line 73
    .line 74
    invoke-direct {v3, v2}, Lj/c;-><init>(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v3

    .line 78
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 79
    .line 80
    invoke-virtual {v2}, Lj/v;->b()V

    .line 81
    .line 82
    .line 83
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_44

    .line 84
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    .line 85
    return-void

    .line 86
    :catchall_55
    move-exception v1

    .line 87
    goto :goto_59

    .line 88
    :goto_57
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_44

    .line 89
    :try_start_58
    throw v2

    .line 90
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_55

    .line 91
    throw v1

    .line 92
    :pswitch_5b
    iget-object v0, p0, Lj/s;->c:Ly/f;

    .line 93
    .line 94
    iget-object v1, v0, Ly/f;->b:Ld0/h;

    .line 95
    .line 96
    invoke-virtual {v1}, Ld0/h;->a()V

    .line 97
    .line 98
    .line 99
    iget-object v0, v0, Ly/f;->c:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v0

    .line 102
    :try_start_65
    iget-object v1, p0, Lj/s;->d:Lj/v;

    .line 103
    .line 104
    monitor-enter v1
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_9c

    .line 105
    :try_start_68
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 106
    .line 107
    iget-object v2, v2, Lj/v;->b:Lj/u;

    .line 108
    .line 109
    iget-object v3, p0, Lj/s;->c:Ly/f;

    .line 110
    .line 111
    iget-object v2, v2, Lj/u;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    new-instance v4, Lj/t;

    .line 114
    .line 115
    sget-object v5, Lc0/g;->b:Lc0/f;

    .line 116
    .line 117
    invoke-direct {v4, v3, v5}, Lj/t;-><init>(Ly/f;Ljava/util/concurrent/Executor;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_94

    .line 125
    .line 126
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 127
    .line 128
    iget-object v3, p0, Lj/s;->c:Ly/f;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_92

    .line 131
    .line 132
    .line 133
    :try_start_84
    iget-object v2, v2, Lj/v;->r:Lj/z;

    .line 134
    .line 135
    const/4 v4, 0x5

    .line 136
    invoke-virtual {v3, v2, v4}, Ly/f;->f(Lj/z;I)V
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_8b

    .line 137
    .line 138
    .line 139
    goto :goto_94

    .line 140
    :catchall_8b
    move-exception v2

    .line 141
    :try_start_8c
    new-instance v3, Lj/c;

    .line 142
    .line 143
    invoke-direct {v3, v2}, Lj/c;-><init>(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    throw v3

    .line 147
    :catchall_92
    move-exception v2

    .line 148
    goto :goto_9e

    .line 149
    :cond_94
    :goto_94
    iget-object v2, p0, Lj/s;->d:Lj/v;

    .line 150
    .line 151
    invoke-virtual {v2}, Lj/v;->b()V

    .line 152
    .line 153
    .line 154
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_8c .. :try_end_9a} :catchall_92

    .line 155
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9c

    .line 156
    return-void

    .line 157
    :catchall_9c
    move-exception v1

    .line 158
    goto :goto_a0

    .line 159
    :goto_9e
    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_92

    .line 160
    :try_start_9f
    throw v2

    .line 161
    :goto_a0
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_9c

    .line 162
    throw v1

    .line 163
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_5b
    .end packed-switch
.end method
