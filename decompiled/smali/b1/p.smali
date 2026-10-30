.class public final synthetic Lb1/p;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb1/r;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Landroid/webkit/WebView;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:J


# direct methods
.method public synthetic constructor <init>(Lb1/r;JJLandroid/webkit/WebView;Ljava/lang/String;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb1/p;->b:Lb1/r;

    .line 5
    .line 6
    iput-wide p2, p0, Lb1/p;->c:J

    .line 7
    .line 8
    iput-wide p4, p0, Lb1/p;->d:J

    .line 9
    .line 10
    iput-object p6, p0, Lb1/p;->e:Landroid/webkit/WebView;

    .line 11
    .line 12
    iput-object p7, p0, Lb1/p;->f:Ljava/lang/String;

    .line 13
    .line 14
    iput-boolean p8, p0, Lb1/p;->g:Z

    .line 15
    .line 16
    iput-wide p9, p0, Lb1/p;->h:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lb1/p;->b:Lb1/r;

    .line 2
    .line 3
    iget-wide v3, p0, Lb1/p;->c:J

    .line 4
    .line 5
    iget-wide v1, p0, Lb1/p;->d:J

    .line 6
    .line 7
    iget-object v9, p0, Lb1/p;->e:Landroid/webkit/WebView;

    .line 8
    .line 9
    iget-object v10, p0, Lb1/p;->f:Ljava/lang/String;

    .line 10
    .line 11
    move-wide v5, v1

    .line 12
    iget-boolean v2, p0, Lb1/p;->g:Z

    .line 13
    .line 14
    move-wide v7, v3

    .line 15
    iget-wide v3, p0, Lb1/p;->h:J

    .line 16
    .line 17
    iget-object v11, v0, Lb1/r;->i:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v11

    .line 20
    :try_start_0
    iget-boolean v1, v0, Lb1/r;->h:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-wide v12, v0, Lb1/r;->n:J

    .line 25
    .line 26
    cmp-long v1, v7, v12

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-wide v12, v0, Lb1/r;->m:J

    .line 31
    .line 32
    cmp-long v1, v5, v12

    .line 33
    .line 34
    if-gtz v1, :cond_1

    .line 35
    .line 36
    :cond_0
    move-wide v1, v5

    .line 37
    move-wide v3, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v1, v0, Lb1/r;->c:Landroid/webkit/WebView;

    .line 41
    .line 42
    if-ne v1, v9, :cond_2

    .line 43
    .line 44
    iget-boolean v1, v0, Lb1/r;->b:Z

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    :cond_2
    move-wide v1, v5

    .line 49
    move-wide v3, v7

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v1, v0

    .line 52
    :try_start_1
    new-instance v0, Lb1/q;

    .line 53
    .line 54
    invoke-direct/range {v0 .. v8}, Lb1/q;-><init>(Lb1/r;ZJJJ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    .line 56
    .line 57
    move-wide v3, v5

    .line 58
    move-object v5, v0

    .line 59
    move-object v0, v1

    .line 60
    move-wide v1, v3

    .line 61
    move-wide v3, v7

    .line 62
    :try_start_2
    invoke-virtual {v9, v10, v5}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-object v0, v1

    .line 67
    move-wide v1, v5

    .line 68
    move-wide v3, v7

    .line 69
    :catch_1
    const/4 v5, 0x0

    .line 70
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_0
    const/4 v5, 0x0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_2

    .line 81
    :goto_1
    const/4 v5, 0x0

    .line 82
    :try_start_3
    invoke-virtual/range {v0 .. v5}, Lb1/r;->g(JJZ)V

    .line 83
    .line 84
    .line 85
    monitor-exit v11

    .line 86
    return-void

    .line 87
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    throw v0
.end method
