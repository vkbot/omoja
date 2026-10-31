.class public final Lb7/t;
.super Landroid/view/OrientationEventListener;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:Lb7/p;


# direct methods
.method public constructor <init>(Lb7/p;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb7/t;->a:Lb7/p;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lb7/t;->a:Lb7/p;

    .line 2
    .line 3
    iget-object v0, p1, Lb7/p;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/view/WindowManager;

    .line 6
    .line 7
    iget-object v1, p1, Lb7/p;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lr5/c;

    .line 10
    .line 11
    if-eqz v0, :cond_2d

    .line 12
    .line 13
    if-eqz v1, :cond_2d

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p1, Lb7/p;->b:I

    .line 24
    .line 25
    if-eq v0, v2, :cond_2d

    .line 26
    .line 27
    iput v0, p1, Lb7/p;->b:I

    .line 28
    .line 29
    iget-object p1, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 32
    .line 33
    iget-object p1, p1, Lb7/f;->d:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v0, La4/g;

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    invoke-direct {v0, v2, v1}, La4/g;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v1, 0xfa

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_2d
    return-void
.end method
