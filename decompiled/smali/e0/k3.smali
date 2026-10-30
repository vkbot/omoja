.class public final Le0/k3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Le0/k3;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget p1, p0, Le0/k3;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 18
    .line 19
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1

    .line 26
    :pswitch_0
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 38
    .line 39
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1

    .line 46
    :pswitch_1
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsavvod(I)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 58
    .line 59
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    throw p1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
