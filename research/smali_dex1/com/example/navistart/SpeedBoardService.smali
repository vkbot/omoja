.class public Lcom/example/navistart/SpeedBoardService;
.super Landroid/app/Service;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lh0/c;


# static fields
.field public static g:Landroid/view/WindowManager;

.field public static h:Landroid/view/WindowManager;

.field public static i:Lv0/h;

.field public static j:Lv0/h;

.field public static final k:Ljava/lang/String;


# instance fields
.field public final b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public c:Ljava/util/concurrent/ScheduledFuture;

.field public final d:Le0/r2;

.field public final e:Le0/r2;

.field public final f:Le0/r2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_16

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    fill-array-data v1, :array_2a

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/example/navistart/SpeedBoardService;->k:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_16
    .array-data 1
        0x1bt
        0x10t
        0x12t
        -0x1ft
        -0x7t
        0xet
        -0x28t
        -0x69t
        0x37t
        0x4t
        0x38t
        -0x1ft
        -0x7t
        0x0t
        -0x39t
        -0x44t
        0x18t
        0x15t
        0x22t
        -0x9t
        -0x1at
        0xct
        -0x3dt
        -0x66t
        0x9t
        0x38t
        0x25t
        -0x19t
        -0x17t
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    nop

    .line 43
    :array_2a
    .array-data 1
        0x68t
        0x67t
        0x4dt
        -0x6et
        -0x73t
        0x6ft
        -0x56t
        -0x1dt
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x11

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    fill-array-data v0, :array_36

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    new-array v1, v1, [B

    .line 14
    .line 15
    fill-array-data v1, :array_44

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-static {v1, v0}, Le0/w;->c(ILjava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardService;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 28
    .line 29
    new-instance v0, Le0/r2;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Le0/r2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardService;->d:Le0/r2;

    .line 36
    .line 37
    new-instance v0, Le0/r2;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Le0/r2;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardService;->e:Le0/r2;

    .line 44
    .line 45
    new-instance v0, Le0/r2;

    .line 46
    .line 47
    const/4 v1, 0x2

    .line 48
    invoke-direct {v0, v1}, Le0/r2;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/example/navistart/SpeedBoardService;->f:Le0/r2;

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :array_36
    .array-data 1
        0x7dt
        0x5ct
        0x1et
        -0x56t
        -0x74t
        0xft
        0x7ct
        -0xet
        0x5ct
        0x48t
        0x28t
        -0x56t
        -0x66t
        0x3bt
        0x7at
        -0x10t
        0x4bt
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    nop

    .line 69
    :array_44
    .array-data 1
        0x2et
        0x2ct
        0x7bt
        -0x31t
        -0x18t
        0x4dt
        0x13t
        -0x6dt
    .end array-data
.end method

.method public static a(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lv0/h;->setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 9
    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lv0/h;->setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 13
    .line 14
    .line 15
    :cond_e
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lu0/a;->loadBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1b

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lcom/example/navistart/SpeedBoardService;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public final c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardService;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/example/navistart/SpeedBoardService;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    :cond_10
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 18
    .line 19
    if-eqz v0, :cond_17

    .line 20
    .line 21
    invoke-interface {v0}, Lv0/h;->b()V

    .line 22
    .line 23
    .line 24
    :cond_17
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 25
    .line 26
    if-eqz v0, :cond_1e

    .line 27
    .line 28
    invoke-interface {v0}, Lv0/h;->b()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 32
    .line 33
    if-eqz v0, :cond_2d

    .line 34
    .line 35
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 36
    .line 37
    if-eqz v1, :cond_2d

    .line 38
    .line 39
    invoke-interface {v1}, Lv0/h;->getView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->h:Landroid/view/WindowManager;

    .line 47
    .line 48
    if-eqz v0, :cond_3c

    .line 49
    .line 50
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 51
    .line 52
    if-eqz v1, :cond_3c

    .line 53
    .line 54
    invoke-interface {v1}, Lv0/h;->getView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/example/navistart/SpeedBoardService;->c()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lh0/b;->q:Landroid/content/ContextWrapper;

    .line 6
    .line 7
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final onCreate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/example/navistart/SpeedBoardService;->d:Le0/r2;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/example/navistart/SpeedBoardService;->e:Le0/r2;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/example/navistart/SpeedBoardService;->f:Le0/r2;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onDestroy()V
    .registers 4

    .line 1
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Lv1/c;->a:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/example/navistart/SpeedBoardService;->d:Le0/r2;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/example/navistart/SpeedBoardService;->e:Le0/r2;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lv1/c;->g:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/example/navistart/SpeedBoardService;->f:Le0/r2;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/example/navistart/SpeedBoardService;->c()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/example/navistart/SpeedBoardService;->c()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x7

    .line 11
    new-array v2, v2, [B

    .line 12
    .line 13
    fill-array-data v2, :array_2f8

    .line 14
    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    new-array v4, v3, [B

    .line 19
    .line 20
    fill-array-data v4, :array_300

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v4}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Lcom/example/navistart/cores/ProLanProxy;->getPriDisplayID()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/16 v4, 0xf

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x6

    .line 53
    const/4 v8, -0x1

    .line 54
    if-le v2, v8, :cond_134

    .line 55
    .line 56
    array-length v9, v1

    .line 57
    if-le v9, v2, :cond_134

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    aget-object v2, v1, v2

    .line 64
    .line 65
    invoke-virtual {v9, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    new-array v9, v7, [B

    .line 70
    .line 71
    fill-array-data v9, :array_308

    .line 72
    .line 73
    .line 74
    new-array v10, v3, [B

    .line 75
    .line 76
    fill-array-data v10, :array_310

    .line 77
    .line 78
    .line 79
    invoke-static {v9, v10}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroid/view/WindowManager;

    .line 88
    .line 89
    sput-object v2, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 90
    .line 91
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lh0/b;->p()Lk1/a;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget v2, v2, Lk1/a;->a:I

    .line 99
    .line 100
    packed-switch v2, :pswitch_data_2d8

    .line 101
    .line 102
    .line 103
    new-instance v2, Lv0/f;

    .line 104
    .line 105
    invoke-direct {v2, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_f3

    .line 109
    .line 110
    :pswitch_6d
    new-instance v2, Lv0/f;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_f3

    .line 116
    .line 117
    :pswitch_74
    new-instance v2, Lv0/d;

    .line 118
    .line 119
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    const v9, 0x7f0c0101

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v9, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    const v9, 0x7f09024d

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    check-cast v9, Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 136
    .line 137
    iput-object v9, v2, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 138
    .line 139
    const v9, 0x7f09024e

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 147
    .line 148
    iput-object v9, v2, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 149
    .line 150
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v9, v2, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 154
    .line 155
    const/16 v10, 0x87

    .line 156
    .line 157
    const/16 v11, 0x195

    .line 158
    .line 159
    if-eqz v9, :cond_b8

    .line 160
    .line 161
    const/16 v12, 0xdc

    .line 162
    .line 163
    int-to-float v12, v12

    .line 164
    invoke-virtual {v9, v12}, Lw1/e;->setMaxSpeed(F)V

    .line 165
    .line 166
    .line 167
    iget-object v9, v2, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 168
    .line 169
    invoke-virtual {v9, v10}, Lw1/i;->setStartDegree(I)V

    .line 170
    .line 171
    .line 172
    iget-object v9, v2, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 173
    .line 174
    invoke-virtual {v9, v11}, Lw1/i;->setEndDegree(I)V

    .line 175
    .line 176
    .line 177
    iget-object v9, v2, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 178
    .line 179
    const v12, 0x7f070218

    .line 180
    .line 181
    .line 182
    invoke-virtual {v9, v12}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(I)V

    .line 183
    .line 184
    .line 185
    :cond_b8
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v9, v2, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 189
    .line 190
    if-eqz v9, :cond_f3

    .line 191
    .line 192
    int-to-float v12, v3

    .line 193
    invoke-virtual {v9, v12}, Lw1/e;->setMaxSpeed(F)V

    .line 194
    .line 195
    .line 196
    iget-object v9, v2, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 197
    .line 198
    invoke-virtual {v9, v10}, Lw1/i;->setStartDegree(I)V

    .line 199
    .line 200
    .line 201
    iget-object v9, v2, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 202
    .line 203
    invoke-virtual {v9, v11}, Lw1/i;->setEndDegree(I)V

    .line 204
    .line 205
    .line 206
    iget-object v9, v2, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 207
    .line 208
    const v10, 0x7f070217

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9, v10}, Lcom/github/anastr/speedviewlib/ImageSpeedometer;->setImageSpeedometer(I)V

    .line 212
    .line 213
    .line 214
    goto :goto_f3

    .line 215
    :pswitch_d6
    new-instance v2, Lv0/f;

    .line 216
    .line 217
    invoke-direct {v2, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 218
    .line 219
    .line 220
    goto :goto_f3

    .line 221
    :pswitch_dc
    new-instance v2, Lcom/example/navistart/SpeedBoard/PPSView;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    const v9, 0x7f0c0100

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v9, v0}, Lcom/example/navistart/SpeedBoard/PPSView;->k(ILandroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    goto :goto_f3

    .line 233
    :pswitch_e8
    new-instance v2, Lv0/f;

    .line 234
    .line 235
    invoke-direct {v2, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 236
    .line 237
    .line 238
    goto :goto_f3

    .line 239
    :pswitch_ee
    new-instance v2, Lv0/f;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 242
    .line 243
    .line 244
    :cond_f3
    :goto_f3
    sput-object v2, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 245
    .line 246
    instance-of v9, v2, Lv0/f;

    .line 247
    .line 248
    if-nez v9, :cond_134

    .line 249
    .line 250
    :try_start_f9
    sget-object v9, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 251
    .line 252
    invoke-interface {v2}, Lv0/h;->getView()Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sget-object v10, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 257
    .line 258
    invoke-interface {v10}, Lv0/h;->getLayParams()Landroid/view/WindowManager$LayoutParams;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    invoke-interface {v9, v2, v10}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    sget-object v2, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 266
    .line 267
    invoke-interface {v2, v6}, Lv0/h;->setBackgroundColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object v2, v0, Lcom/example/navistart/SpeedBoardService;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 271
    .line 272
    if-eqz v2, :cond_11c

    .line 273
    .line 274
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_11c

    .line 279
    .line 280
    iget-object v2, v0, Lcom/example/navistart/SpeedBoardService;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 281
    .line 282
    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 283
    .line 284
    .line 285
    :cond_11c
    iget-object v9, v0, Lcom/example/navistart/SpeedBoardService;->b:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 286
    .line 287
    new-instance v10, Le0/v0;

    .line 288
    .line 289
    invoke-direct {v10, v4, v0}, Le0/v0;-><init>(ILjava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    sget-object v2, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 293
    .line 294
    invoke-interface {v2}, Lv0/h;->d()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    int-to-long v13, v2

    .line 299
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    .line 301
    const-wide/16 v11, 0xa

    .line 302
    .line 303
    invoke-interface/range {v9 .. v15}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    iput-object v2, v0, Lcom/example/navistart/SpeedBoardService;->c:Ljava/util/concurrent/ScheduledFuture;
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_134} :catch_134

    .line 308
    .line 309
    :catch_134
    :cond_134
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 310
    .line 311
    .line 312
    invoke-static {}, Lh0/b;->n()Lcom/example/navistart/cores/ProLanProxy;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-interface {v2}, Lcom/example/navistart/cores/ProLanProxy;->getHUDDisplayID()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-le v2, v8, :cond_245

    .line 321
    .line 322
    array-length v8, v1

    .line 323
    if-le v8, v2, :cond_245

    .line 324
    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    aget-object v1, v1, v2

    .line 330
    .line 331
    invoke-virtual {v8, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    new-array v2, v7, [B

    .line 336
    .line 337
    fill-array-data v2, :array_318

    .line 338
    .line 339
    .line 340
    new-array v7, v3, [B

    .line 341
    .line 342
    fill-array-data v7, :array_320

    .line 343
    .line 344
    .line 345
    invoke-static {v2, v7}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Landroid/view/WindowManager;

    .line 354
    .line 355
    sput-object v1, Lcom/example/navistart/SpeedBoardService;->h:Landroid/view/WindowManager;

    .line 356
    .line 357
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Lh0/b;->p()Lk1/a;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    iget v1, v1, Lk1/a;->a:I

    .line 365
    .line 366
    const/16 v2, 0x1c

    .line 367
    .line 368
    const/16 v7, 0xb

    .line 369
    .line 370
    packed-switch v1, :pswitch_data_2e8

    .line 371
    .line 372
    .line 373
    new-instance v1, Lv0/i;

    .line 374
    .line 375
    new-instance v8, Lb1/t;

    .line 376
    .line 377
    new-array v4, v4, [B

    .line 378
    .line 379
    fill-array-data v4, :array_328

    .line 380
    .line 381
    .line 382
    new-array v9, v3, [B

    .line 383
    .line 384
    fill-array-data v9, :array_334

    .line 385
    .line 386
    .line 387
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    new-array v2, v2, [B

    .line 392
    .line 393
    fill-array-data v2, :array_33c

    .line 394
    .line 395
    .line 396
    new-array v9, v3, [B

    .line 397
    .line 398
    fill-array-data v9, :array_34e

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    new-array v7, v7, [B

    .line 406
    .line 407
    fill-array-data v7, :array_356

    .line 408
    .line 409
    .line 410
    new-array v9, v3, [B

    .line 411
    .line 412
    fill-array-data v9, :array_360

    .line 413
    .line 414
    .line 415
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    invoke-direct {v8, v4, v2, v7}, Lb1/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-direct {v1, v0, v8}, Lv0/i;-><init>(Lcom/example/navistart/SpeedBoardService;Lb1/t;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_22b

    .line 426
    .line 427
    :pswitch_1aa
    new-instance v1, Lv0/i;

    .line 428
    .line 429
    new-instance v8, Lb1/t;

    .line 430
    .line 431
    new-array v4, v4, [B

    .line 432
    .line 433
    fill-array-data v4, :array_368

    .line 434
    .line 435
    .line 436
    new-array v9, v3, [B

    .line 437
    .line 438
    fill-array-data v9, :array_374

    .line 439
    .line 440
    .line 441
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    new-array v2, v2, [B

    .line 446
    .line 447
    fill-array-data v2, :array_37c

    .line 448
    .line 449
    .line 450
    new-array v9, v3, [B

    .line 451
    .line 452
    fill-array-data v9, :array_38e

    .line 453
    .line 454
    .line 455
    invoke-static {v2, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    new-array v7, v7, [B

    .line 460
    .line 461
    fill-array-data v7, :array_396

    .line 462
    .line 463
    .line 464
    new-array v9, v3, [B

    .line 465
    .line 466
    fill-array-data v9, :array_3a0

    .line 467
    .line 468
    .line 469
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    invoke-direct {v8, v4, v2, v7}, Lb1/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-direct {v1, v0, v8}, Lv0/i;-><init>(Lcom/example/navistart/SpeedBoardService;Lb1/t;)V

    .line 477
    .line 478
    .line 479
    goto :goto_22b

    .line 480
    :pswitch_1df
    new-instance v1, Lv0/f;

    .line 481
    .line 482
    invoke-direct {v1, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 483
    .line 484
    .line 485
    goto :goto_22b

    .line 486
    :pswitch_1e5
    new-instance v1, Lv0/f;

    .line 487
    .line 488
    invoke-direct {v1, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 489
    .line 490
    .line 491
    goto :goto_22b

    .line 492
    :pswitch_1eb
    new-instance v1, Lv0/f;

    .line 493
    .line 494
    invoke-direct {v1, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 495
    .line 496
    .line 497
    goto :goto_22b

    .line 498
    :pswitch_1f1
    new-instance v1, Lv0/f;

    .line 499
    .line 500
    invoke-direct {v1, v0}, Lv0/f;-><init>(Lcom/example/navistart/SpeedBoardService;)V

    .line 501
    .line 502
    .line 503
    goto :goto_22b

    .line 504
    :pswitch_1f7
    new-instance v1, Lv0/i;

    .line 505
    .line 506
    new-instance v8, Lb1/t;

    .line 507
    .line 508
    new-array v4, v4, [B

    .line 509
    .line 510
    fill-array-data v4, :array_3a8

    .line 511
    .line 512
    .line 513
    new-array v9, v3, [B

    .line 514
    .line 515
    fill-array-data v9, :array_3b4

    .line 516
    .line 517
    .line 518
    invoke-static {v4, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    new-array v2, v2, [B

    .line 523
    .line 524
    fill-array-data v2, :array_3bc

    .line 525
    .line 526
    .line 527
    new-array v9, v3, [B

    .line 528
    .line 529
    fill-array-data v9, :array_3ce

    .line 530
    .line 531
    .line 532
    invoke-static {v2, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    new-array v7, v7, [B

    .line 537
    .line 538
    fill-array-data v7, :array_3d6

    .line 539
    .line 540
    .line 541
    new-array v9, v3, [B

    .line 542
    .line 543
    fill-array-data v9, :array_3e0

    .line 544
    .line 545
    .line 546
    invoke-static {v7, v9}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v7

    .line 550
    invoke-direct {v8, v4, v2, v7}, Lb1/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-direct {v1, v0, v8}, Lv0/i;-><init>(Lcom/example/navistart/SpeedBoardService;Lb1/t;)V

    .line 554
    .line 555
    .line 556
    :goto_22b
    sput-object v1, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 557
    .line 558
    instance-of v2, v1, Lv0/f;

    .line 559
    .line 560
    if-nez v2, :cond_245

    .line 561
    .line 562
    :try_start_231
    sget-object v2, Lcom/example/navistart/SpeedBoardService;->h:Landroid/view/WindowManager;

    .line 563
    .line 564
    invoke-interface {v1}, Lv0/h;->getView()Landroid/view/View;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    sget-object v4, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 569
    .line 570
    invoke-interface {v4}, Lv0/h;->getLayParams()Landroid/view/WindowManager$LayoutParams;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-interface {v2, v1, v4}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    .line 576
    .line 577
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 578
    .line 579
    invoke-interface {v1, v6}, Lv0/h;->setBackgroundColor(I)V
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_231 .. :try_end_245} :catch_245

    .line 580
    .line 581
    .line 582
    :catch_245
    :cond_245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    sget-object v4, Le0/m;->j:[B

    .line 592
    .line 593
    sget-object v7, Le0/p3;->a:[Ljava/lang/String;

    .line 594
    .line 595
    const-string v7, ""

    .line 596
    .line 597
    invoke-static {v4, v2, v7, v1}, Lcom/google/protobuf/q;->s([BLu0/a;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 598
    .line 599
    .line 600
    const/16 v2, 0x9

    .line 601
    .line 602
    new-array v2, v2, [B

    .line 603
    .line 604
    fill-array-data v2, :array_3e8

    .line 605
    .line 606
    .line 607
    invoke-static {v2, v1}, Lcom/google/protobuf/q;->r([BLjava/lang/StringBuilder;)V

    .line 608
    .line 609
    .line 610
    sget-object v2, Le0/x1;->q:Ljava/lang/String;

    .line 611
    .line 612
    invoke-static {v1, v2}, Lcom/google/protobuf/q;->g(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    sget-object v4, Le0/m;->f:[B

    .line 621
    .line 622
    invoke-static {v4, v2, v7, v1}, Lcom/google/protobuf/q;->w([BLu0/a;Ljava/lang/String;Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-eqz v1, :cond_2ba

    .line 627
    .line 628
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-virtual {v1}, Lh0/b;->j()Lcom/example/navistart/cores/InterC;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    const-wide v7, 0x7fffffffffffffffL

    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    invoke-static {v7, v8, v1}, Lcom/google/protobuf/q;->d(JLcom/example/navistart/cores/InterC;)J

    .line 642
    .line 643
    .line 644
    move-result-wide v1

    .line 645
    new-instance v7, Ljava/lang/String;

    .line 646
    .line 647
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 648
    .line 649
    .line 650
    move-result-object v8

    .line 651
    invoke-static {}, Lh0/b;->o()Lu0/a;

    .line 652
    .line 653
    .line 654
    move-result-object v9

    .line 655
    new-instance v10, Ljava/lang/String;

    .line 656
    .line 657
    invoke-direct {v10, v4}, Ljava/lang/String;-><init>([B)V

    .line 658
    .line 659
    .line 660
    sget-object v4, Le0/m;->g:[B

    .line 661
    .line 662
    invoke-static {v4, v9, v10}, Lcom/google/protobuf/q;->h([BLu0/a;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    new-array v9, v5, [B

    .line 667
    .line 668
    const/16 v10, -0x12

    .line 669
    .line 670
    aput-byte v10, v9, v6

    .line 671
    .line 672
    new-array v3, v3, [B

    .line 673
    .line 674
    fill-array-data v3, :array_3f2

    .line 675
    .line 676
    .line 677
    invoke-static {v9, v3, v8, v4, v6}, Lcom/google/protobuf/q;->x([B[BLu0/a;Ljava/lang/String;I)[B

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    .line 682
    .line 683
    .line 684
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 685
    .line 686
    .line 687
    move-result-wide v3

    .line 688
    cmp-long v1, v1, v3

    .line 689
    .line 690
    if-gez v1, :cond_2b4

    .line 691
    .line 692
    goto :goto_2b5

    .line 693
    :cond_2b4
    move v5, v6

    .line 694
    :goto_2b5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    goto :goto_2bc

    .line 699
    :cond_2ba
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 700
    .line 701
    :goto_2bc
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-eqz v1, :cond_2d0

    .line 706
    .line 707
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 708
    .line 709
    if-eqz v1, :cond_2c9

    .line 710
    .line 711
    invoke-interface {v1}, Lv0/h;->a()V

    .line 712
    .line 713
    .line 714
    :cond_2c9
    sget-object v1, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 715
    .line 716
    if-eqz v1, :cond_2d0

    .line 717
    .line 718
    invoke-interface {v1}, Lv0/h;->a()V

    .line 719
    .line 720
    .line 721
    :cond_2d0
    sput-object v0, Lh0/b;->q:Landroid/content/ContextWrapper;

    .line 722
    .line 723
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    return v1

    .line 728
    nop

    .line 729
    :pswitch_data_2d8
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_e8
        :pswitch_dc
        :pswitch_d6
        :pswitch_74
        :pswitch_6d
    .end packed-switch

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_1f7
        :pswitch_1f1
        :pswitch_1eb
        :pswitch_1e5
        :pswitch_1df
        :pswitch_1aa
    .end packed-switch

    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    :array_2f8
    .array-data 1
        0x64t
        0x34t
        0x6et
        0x2at
        -0x79t
        0x67t
        0x3dt
    .end array-data

    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :array_300
    .array-data 1
        0x0t
        0x5dt
        0x1dt
        0x5at
        -0x15t
        0x6t
        0x44t
        0x27t
    .end array-data

    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    :array_308
    .array-data 1
        0x7ct
        -0x79t
        0xct
        0x6t
        -0x41t
        -0x7dt
    .end array-data

    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    nop

    .line 785
    :array_310
    .array-data 1
        0xbt
        -0x12t
        0x62t
        0x62t
        -0x30t
        -0xct
        0x5bt
        -0x57t
    .end array-data

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :array_318
    .array-data 1
        0xet
        0x40t
        -0x47t
        0x67t
        0x48t
        -0x42t
    .end array-data

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    nop

    .line 801
    :array_320
    .array-data 1
        0x79t
        0x29t
        -0x29t
        0x3t
        0x27t
        -0x37t
        -0x36t
        -0x65t
    .end array-data

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :array_328
    .array-data 1
        -0x2bt
        -0x47t
        0x39t
        0x7dt
        0x76t
        0x3dt
        0x4ft
        -0x4t
        -0xet
        -0x5bt
        0xdt
        0x6ct
        0x5ct
        0x38t
        0x79t
    .end array-data

    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :array_334
    .array-data 1
        -0x68t
        -0x40t
        0x6et
        0x18t
        0x14t
        0x6dt
        0x3dt
        -0x6dt
    .end array-data

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    :array_33c
    .array-data 1
        0x3at
        0x2ft
        -0x6bt
        -0x37t
        -0x39t
        -0x77t
        -0x2at
        -0x79t
        0x1dt
        0x33t
        -0x5ft
        -0x28t
        -0x13t
        -0x74t
        -0x20t
        -0x49t
        0x24t
        0x33t
        -0x4at
        -0x28t
        -0x34t
        -0x49t
        -0x3dt
        -0x65t
        0x28t
        0x1dt
        -0x59t
        -0x2bt
    .end array-data

    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    :array_34e
    .array-data 1
        0x77t
        0x56t
        -0x3et
        -0x54t
        -0x5bt
        -0x27t
        -0x5ct
        -0x18t
    .end array-data

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    :array_356
    .array-data 1
        -0x52t
        -0x62t
        0x76t
        0x59t
        0x3dt
        0x6ft
        -0x5ct
        -0x1et
        -0x5et
        -0x72t
        0x74t
    .end array-data

    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    :array_360
    .array-data 1
        -0x36t
        -0x5t
        0x10t
        0x38t
        0x48t
        0x3t
        -0x30t
        -0x43t
    .end array-data

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    :array_368
    .array-data 1
        0x7bt
        -0x6ft
        -0x1bt
        0x1at
        0x4bt
        0x34t
        0x1ct
        -0x48t
        0x5ct
        -0x73t
        -0x2ft
        0xbt
        0x61t
        0x31t
        0x2at
    .end array-data

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    :array_374
    .array-data 1
        0x36t
        -0x18t
        -0x4et
        0x7ft
        0x29t
        0x64t
        0x6et
        -0x29t
    .end array-data

    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :array_37c
    .array-data 1
        -0x9t
        -0x7bt
        0x14t
        -0x4dt
        -0x1et
        -0x56t
        -0x6at
        -0x12t
        -0x30t
        -0x67t
        0x20t
        -0x5et
        -0x38t
        -0x51t
        -0x60t
        -0x22t
        -0x17t
        -0x67t
        0x37t
        -0x5et
        -0x17t
        -0x6ct
        -0x7dt
        -0xet
        -0x1bt
        -0x49t
        0x26t
        -0x51t
    .end array-data

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :array_38e
    .array-data 1
        -0x46t
        -0x4t
        0x43t
        -0x2at
        -0x80t
        -0x6t
        -0x1ct
        -0x7ft
    .end array-data

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    :array_396
    .array-data 1
        -0x79t
        0x31t
        -0x16t
        -0x79t
        0x46t
        0x6dt
        0x2ft
        0x30t
        -0x75t
        0x21t
        -0x18t
    .end array-data

    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    :array_3a0
    .array-data 1
        -0x1dt
        0x54t
        -0x74t
        -0x1at
        0x33t
        0x1t
        0x5bt
        0x6ft
    .end array-data

    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    :array_3a8
    .array-data 1
        -0x56t
        -0x1bt
        0x5bt
        0x48t
        -0x80t
        -0x29t
        0x5bt
        -0x30t
        -0x73t
        -0x7t
        0x6ft
        0x59t
        -0x56t
        -0x2et
        0x6dt
    .end array-data

    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    :array_3b4
    .array-data 1
        -0x19t
        -0x64t
        0xct
        0x2dt
        -0x1et
        -0x79t
        0x29t
        -0x41t
    .end array-data

    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    :array_3bc
    .array-data 1
        0x33t
        -0x2ct
        -0x24t
        0x6ft
        -0x12t
        -0x21t
        -0x59t
        -0x4ft
        0x14t
        -0x38t
        -0x18t
        0x7et
        -0x3ct
        -0x26t
        -0x6ft
        -0x7ft
        0x2dt
        -0x38t
        -0x1t
        0x7et
        -0x1bt
        -0x1ft
        -0x4et
        -0x53t
        0x21t
        -0x1at
        -0x12t
        0x73t
    .end array-data

    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    :array_3ce
    .array-data 1
        0x7et
        -0x53t
        -0x75t
        0xat
        -0x74t
        -0x71t
        -0x2bt
        -0x22t
    .end array-data

    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    :array_3d6
    .array-data 1
        0x32t
        -0x67t
        -0x12t
        0x78t
        0x36t
        0x1t
        0x24t
        0x26t
        0x3et
        -0x77t
        -0x14t
    .end array-data

    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    :array_3e0
    .array-data 1
        0x56t
        -0x4t
        -0x78t
        0x19t
        0x43t
        0x6dt
        0x50t
        0x79t
    .end array-data

    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    :array_3e8
    .array-data 1
        0x6ct
        0x69t
        0x63t
        0x74t
        0x5ft
        0x72t
        0x69t
        0x75t
        0x65t
    .end array-data

    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    nop

    .line 1011
    :array_3f2
    .array-data 1
        -0x22t
        -0x28t
        -0xbt
        0x50t
        -0x41t
        -0x39t
        -0x80t
        0x19t
    .end array-data
.end method
