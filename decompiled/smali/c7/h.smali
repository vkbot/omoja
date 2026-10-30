.class public final Lc7/h;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public a:Lr5/c;

.field public b:Lb7/u;

.field public final synthetic c:Lc7/i;


# direct methods
.method public constructor <init>(Lc7/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc7/h;->c:Lc7/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc7/h;->b:Lb7/u;

    .line 2
    .line 3
    iget-object v1, p0, Lc7/h;->a:Lr5/c;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    new-instance v2, Lb7/v;

    .line 20
    .line 21
    iget v3, v0, Lb7/u;->b:I

    .line 22
    .line 23
    iget v4, v0, Lb7/u;->c:I

    .line 24
    .line 25
    iget-object p2, p0, Lc7/h;->c:Lc7/i;

    .line 26
    .line 27
    iget v6, p2, Lc7/i;->k:I

    .line 28
    .line 29
    move-object v7, p1

    .line 30
    invoke-direct/range {v2 .. v7}, Lb7/v;-><init>(IIII[B)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lc7/h;->c:Lc7/i;

    .line 34
    .line 35
    iget-object p1, p1, Lc7/i;->b:Landroid/hardware/Camera$CameraInfo;

    .line 36
    .line 37
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p1, p2, :cond_0

    .line 41
    .line 42
    iput-boolean p2, v2, Lb7/v;->e:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    goto :goto_3

    .line 48
    :cond_0
    :goto_0
    iget-object p1, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lb7/n;

    .line 51
    .line 52
    iget-object p1, p1, Lb7/n;->h:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object p2, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p2, Lb7/n;

    .line 58
    .line 59
    iget-boolean v0, p2, Lb7/n;->g:Z

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object p2, p2, Lb7/n;->c:Landroid/os/Handler;

    .line 64
    .line 65
    const v0, 0x7f0905ff

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    move-object p2, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :goto_1
    monitor-exit p1

    .line 80
    return-void

    .line 81
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    throw p2

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 84
    .line 85
    const-string p2, "No preview data received"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    :goto_3
    const-string p2, "i"

    .line 92
    .line 93
    const-string v0, "Camera preview failed"

    .line 94
    .line 95
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lr5/c;->k()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    const-string p1, "i"

    .line 103
    .line 104
    const-string p2, "Got preview callback, but no handler or resolution available"

    .line 105
    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    new-instance p1, Ljava/lang/Exception;

    .line 112
    .line 113
    const-string p2, "No resolution available"

    .line 114
    .line 115
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lr5/c;->k()V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method
