.class public final Lp7/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/e0;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ll9/l;

.field public final d:Lo7/m4;

.field public final e:Lp7/n;

.field public final f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ll9/e0;

.field public k:Ljava/net/Socket;

.field public l:Z

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lo7/m4;Lp7/n;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp7/c;->b:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ll9/l;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lp7/c;->c:Ll9/l;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lp7/c;->g:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lp7/c;->h:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lp7/c;->i:Z

    .line 24
    .line 25
    const-string v0, "executor"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lp7/c;->d:Lo7/m4;

    .line 31
    .line 32
    iput-object p2, p0, Lp7/c;->e:Lp7/n;

    .line 33
    .line 34
    const/16 p1, 0x2710

    .line 35
    .line 36
    iput p1, p0, Lp7/c;->f:I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final b(Ll9/e0;Ljava/net/Socket;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp7/c;->j:Ll9/e0;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "sink"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lp7/c;->j:Ll9/e0;

    .line 19
    .line 20
    iput-object p2, p0, Lp7/c;->k:Ljava/net/Socket;

    .line 21
    .line 22
    return-void
.end method

.method public final close()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lp7/c;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lp7/c;->i:Z

    .line 8
    .line 9
    new-instance v0, Lcom/bumptech/glide/m;

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/m;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lp7/c;->d:Lo7/m4;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lo7/m4;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final flush()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lp7/c;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_3b

    .line 4
    .line 5
    invoke-static {}, Lw7/b;->c()V

    .line 6
    .line 7
    .line 8
    :try_start_7
    iget-object v0, p0, Lp7/c;->b:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2c

    .line 11
    :try_start_a
    iget-boolean v1, p0, Lp7/c;->h:Z

    .line 12
    .line 13
    if-eqz v1, :cond_17

    .line 14
    .line 15
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_15

    .line 16
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception v1

    .line 23
    goto :goto_2e

    .line 24
    :cond_17
    const/4 v1, 0x1

    .line 25
    :try_start_18
    iput-boolean v1, p0, Lp7/c;->h:Z

    .line 26
    .line 27
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 28
    :try_start_1b
    iget-object v0, p0, Lp7/c;->d:Lo7/m4;

    .line 29
    .line 30
    new-instance v1, Lp7/a;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, p0, v2}, Lp7/a;-><init>(Lp7/c;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lo7/m4;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2c

    .line 37
    .line 38
    .line 39
    sget-object v0, Lw7/b;->a:Lw7/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_30

    .line 47
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_15

    .line 48
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 49
    :goto_30
    :try_start_30
    sget-object v1, Lw7/b;->a:Lw7/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_36

    .line 52
    .line 53
    .line 54
    goto :goto_3a

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_3a
    throw v0

    .line 60
    :cond_3b
    const-string v0, "closed"

    .line 61
    .line 62
    invoke-static {v0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final timeout()Ll9/j0;
    .registers 2

    .line 1
    sget-object v0, Ll9/j0;->NONE:Ll9/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final write(Ll9/l;J)V
    .registers 10

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lp7/c;->i:Z

    .line 7
    .line 8
    if-nez v0, :cond_80

    .line 9
    .line 10
    invoke-static {}, Lw7/b;->c()V

    .line 11
    .line 12
    .line 13
    :try_start_c
    iget-object v0, p0, Lp7/c;->b:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_4d

    .line 16
    :try_start_f
    iget-object v1, p0, Lp7/c;->c:Ll9/l;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, p3}, Ll9/l;->write(Ll9/l;J)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lp7/c;->n:I

    .line 22
    .line 23
    iget p2, p0, Lp7/c;->m:I

    .line 24
    .line 25
    add-int/2addr p1, p2

    .line 26
    iput p1, p0, Lp7/c;->n:I

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lp7/c;->m:I

    .line 30
    .line 31
    iget-boolean p3, p0, Lp7/c;->l:Z

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-nez p3, :cond_2d

    .line 35
    .line 36
    iget p3, p0, Lp7/c;->f:I

    .line 37
    .line 38
    if-le p1, p3, :cond_2d

    .line 39
    .line 40
    iput-boolean v1, p0, Lp7/c;->l:Z

    .line 41
    .line 42
    move p2, v1

    .line 43
    goto :goto_44

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    goto :goto_73

    .line 46
    :cond_2d
    iget-boolean p1, p0, Lp7/c;->g:Z

    .line 47
    .line 48
    if-nez p1, :cond_6c

    .line 49
    .line 50
    iget-boolean p1, p0, Lp7/c;->h:Z

    .line 51
    .line 52
    if-nez p1, :cond_6c

    .line 53
    .line 54
    iget-object p1, p0, Lp7/c;->c:Ll9/l;

    .line 55
    .line 56
    invoke-virtual {p1}, Ll9/l;->y()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    cmp-long p1, v2, v4

    .line 63
    .line 64
    if-gtz p1, :cond_42

    .line 65
    .line 66
    goto :goto_6c

    .line 67
    :cond_42
    iput-boolean v1, p0, Lp7/c;->g:Z

    .line 68
    .line 69
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_f .. :try_end_45} :catchall_2b

    .line 70
    if-eqz p2, :cond_5b

    .line 71
    .line 72
    :try_start_47
    iget-object p1, p0, Lp7/c;->k:Ljava/net/Socket;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_4f
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    .line 75
    .line 76
    .line 77
    goto :goto_55

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    goto :goto_75

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    :try_start_50
    iget-object p2, p0, Lp7/c;->e:Lp7/n;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Lp7/n;->n(Ljava/lang/Exception;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_4d

    .line 84
    .line 85
    .line 86
    :goto_55
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_5b
    :try_start_5b
    iget-object p1, p0, Lp7/c;->d:Lo7/m4;

    .line 93
    .line 94
    new-instance p2, Lp7/a;

    .line 95
    .line 96
    const/4 p3, 0x0

    .line 97
    invoke-direct {p2, p0, p3}, Lp7/a;-><init>(Lp7/c;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lo7/m4;->execute(Ljava/lang/Runnable;)V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_4d

    .line 101
    .line 102
    .line 103
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_2b

    .line 110
    sget-object p1, Lw7/b;->a:Lw7/a;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_73
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_2b

    .line 117
    :try_start_74
    throw p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_4d

    .line 118
    :goto_75
    :try_start_75
    sget-object p2, Lw7/b;->a:Lw7/a;

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_7b

    .line 121
    .line 122
    .line 123
    goto :goto_7f

    .line 124
    :catchall_7b
    move-exception p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    :goto_7f
    throw p1

    .line 129
    :cond_80
    const-string p1, "closed"

    .line 130
    .line 131
    invoke-static {p1}, Ln0/b;->A(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method
