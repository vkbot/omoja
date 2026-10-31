.class public final synthetic Landroidx/constraintlayout/core/state/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Lb1/k;
.implements Lb8/d;
.implements Lj1/u;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lb1/l;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroidx/constraintlayout/core/state/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 9
    iput p2, p0, Landroidx/constraintlayout/core/state/a;->b:I

    iput-object p1, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget p1, p0, Landroidx/constraintlayout/core/state/a;->b:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    iget-object v2, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_50

    .line 9
    .line 10
    .line 11
    sget-object p1, Lj1/o;->c:Ljava/lang/String;

    .line 12
    .line 13
    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    new-array v1, v1, [B

    .line 19
    .line 20
    fill-array-data v1, :array_56

    .line 21
    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    fill-array-data v0, :array_5e

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2c

    .line 43
    .line 44
    .line 45
    :catchall_2c
    return-void

    .line 46
    :pswitch_2d
    sget-object p1, Lj1/l;->c:Ljava/lang/String;

    .line 47
    .line 48
    :try_start_2f
    new-instance p1, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    new-array v1, v1, [B

    .line 54
    .line 55
    fill-array-data v1, :array_66

    .line 56
    .line 57
    .line 58
    new-array v0, v0, [B

    .line 59
    .line 60
    fill-array-data v0, :array_6e

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0}, Le0/m;->h([B[B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, p1}, Lcom/example/navistart/cores/CarCmdProxy;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_4f

    .line 78
    .line 79
    .line 80
    :catchall_4f
    return-void

    .line 81
    :pswitch_data_50
    .packed-switch 0x5
        :pswitch_2d
    .end packed-switch

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_56
    .array-data 1
        -0x6ct
        -0x3bt
        -0xbt
        -0x8t
        0x3dt
        0x5bt
        -0x21t
    .end array-data

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :array_5e
    .array-data 1
        -0x9t
        -0x56t
        -0x68t
        -0x6bt
        0x5ct
        0x35t
        -0x45t
        0x11t
    .end array-data

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :array_66
    .array-data 1
        -0x7bt
        -0x13t
        0x79t
        0x55t
        0x10t
        0x54t
        0x75t
    .end array-data

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    :array_6e
    .array-data 1
        -0x1at
        -0x7et
        0x14t
        0x38t
        0x71t
        0x3at
        0x11t
        -0x76t
    .end array-data
.end method

.method public getInterpolation(F)F
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/Transition;->d(Ljava/lang/String;F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public run()Ljava/lang/String;
    .registers 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/core/state/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lb1/l;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_c
    iget-object v0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lb1/l;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :pswitch_13
    iget-object v0, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lb1/l;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    check-cast p1, Lx5/c;

    .line 2
    .line 3
    const-string v0, "ON_FOREGROUND"

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/state/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_14

    .line 13
    .line 14
    invoke-virtual {p1}, Lx5/c;->q()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    return v2

    .line 21
    :cond_14
    invoke-virtual {p1}, Lx5/c;->t()Lcom/google/protobuf/a0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5b

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ld5/f;

    .line 40
    .line 41
    invoke-virtual {v0}, Ld5/f;->o()Ld5/d;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_44

    .line 54
    .line 55
    invoke-virtual {v0}, Ld5/f;->n()Ld5/b;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ld5/b;->o()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1c

    .line 68
    .line 69
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "The event "

    .line 72
    .line 73
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " is contained in the list of triggers"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Le3/d;->m(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v2

    .line 92
    :cond_5b
    const/4 p1, 0x0

    .line 93
    return p1
.end method
