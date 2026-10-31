.class public final Le0/j3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Le0/j3;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget p1, p0, Le0/j3;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_4a

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 7
    .line 8
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    throw p1

    .line 15
    :pswitch_e
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 27
    .line 28
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    throw p1

    .line 35
    :pswitch_22
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 47
    .line 48
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    throw p1

    .line 55
    :pswitch_36
    invoke-static {}, Lh0/b;->a()Lh0/b;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lh0/b;->d()Lcom/example/navistart/cores/CarCmdProxy;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-interface {p1, v0}, Lcom/example/navistart/cores/CarCmdProxy;->carsetvod(I)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/example/navistart/VibVodPopUp;->b:Landroid/view/WindowManager;

    .line 67
    .line 68
    sget-object v0, Lcom/example/navistart/VibVodPopUp;->c:Landroid/widget/RelativeLayout;

    .line 69
    .line 70
    invoke-static {p1, v0}, La/a;->v(Landroid/view/WindowManager;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    throw p1

    .line 75
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_22
        :pswitch_e
    .end packed-switch
.end method
