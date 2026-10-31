.class public final Lv0/d;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv0/h;


# static fields
.field public static d:I

.field public static e:I


# instance fields
.field public b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

.field public c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .registers 4

    .line 1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/example/navistart/cores/CarCmdProxy;->getSpeed()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/example/navistart/cores/CarCmdProxy;->getRPM()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sget v2, Lv0/d;->d:I

    .line 27
    .line 28
    if-eq v2, v0, :cond_22

    .line 29
    .line 30
    sput v0, Lv0/d;->d:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lv0/d;->setSpeed(I)V

    .line 33
    .line 34
    .line 35
    :cond_22
    sget v0, Lv0/d;->e:I

    .line 36
    .line 37
    if-eq v0, v1, :cond_2b

    .line 38
    .line 39
    sput v1, Lv0/d;->e:I

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lv0/d;->setRPM(I)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    return-void
.end method

.method public final d()I
    .registers 2

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    return v0
.end method

.method public final e(F)V
    .registers 2

    .line 1
    return-void
.end method

.method public getLayParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1a

    .line 6
    .line 7
    if-lt v1, v2, :cond_c

    .line 8
    .line 9
    const/16 v1, 0x7f6

    .line 10
    .line 11
    :goto_a
    move v3, v1

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    const/16 v1, 0x7d2

    .line 14
    .line 15
    goto :goto_a

    .line 16
    :goto_f
    const/16 v4, 0x308

    .line 17
    .line 18
    const/4 v5, -0x3

    .line 19
    const/4 v1, -0x1

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    .line 28
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .line 1
    return-object p0
.end method

.method public setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V
    .registers 2

    .line 1
    return-void
.end method

.method public setRPM(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv0/d;->c:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 2
    .line 3
    if-eqz v0, :cond_1a

    .line 4
    .line 5
    int-to-float p1, p1

    .line 6
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 7
    .line 8
    div-float/2addr p1, v0

    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Li7/f;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v1, p0, p1, v2}, Li7/f;-><init>(Ljava/lang/Object;FI)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1a
    return-void
.end method

.method public setSpeed(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lv0/d;->b:Lcom/github/anastr/speedviewlib/ImageSpeedometer;

    .line 2
    .line 3
    if-eqz v0, :cond_17

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, La4/c;

    .line 15
    .line 16
    const/16 v2, 0xd

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, v2}, La4/c;-><init>(Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method
