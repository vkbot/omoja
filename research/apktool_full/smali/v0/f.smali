.class public final Lv0/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lv0/h;


# instance fields
.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/example/navistart/SpeedBoardService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/View;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv0/f;->b:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    return v0
.end method

.method public final e(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLayParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

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
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x7f6

    .line 10
    .line 11
    :goto_0
    move v3, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/16 v1, 0x7d2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    const/16 v4, 0x308

    .line 17
    .line 18
    const/4 v5, -0x3

    .line 19
    const/4 v1, -0x2

    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x51

    .line 25
    .line 26
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 30
    .line 31
    const/16 v1, 0x1e

    .line 32
    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/f;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setHudMassageObj(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setSpeed(I)V
    .locals 0

    .line 1
    return-void
.end method
