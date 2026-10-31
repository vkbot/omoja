.class public final synthetic Le0/r2;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Le0/r2;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Le0/r2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_40

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/location/Location;

    .line 7
    .line 8
    if-eqz p1, :cond_18

    .line 9
    .line 10
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 11
    .line 12
    if-eqz v0, :cond_10

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lv0/h;->f(Landroid/location/Location;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 18
    .line 19
    if-eqz v0, :cond_1a

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lv0/h;->f(Landroid/location/Location;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    sget-object p1, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 26
    .line 27
    :cond_1a
    :goto_1a
    return-void

    .line 28
    :pswitch_1b
    check-cast p1, Lcom/example/navistart/cores/HUDMassageObj;

    .line 29
    .line 30
    if-eqz p1, :cond_23

    .line 31
    .line 32
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 33
    .line 34
    .line 35
    goto :goto_25

    .line 36
    :cond_23
    sget-object p1, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 37
    .line 38
    :goto_25
    return-void

    .line 39
    :pswitch_26
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->g:Landroid/view/WindowManager;

    .line 42
    .line 43
    if-eqz p1, :cond_3e

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->i:Lv0/h;

    .line 50
    .line 51
    if-eqz v0, :cond_37

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lv0/h;->setSpeed(I)V

    .line 54
    .line 55
    .line 56
    :cond_37
    sget-object v0, Lcom/example/navistart/SpeedBoardService;->j:Lv0/h;

    .line 57
    .line 58
    if-eqz v0, :cond_3e

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lv0/h;->setSpeed(I)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1b
    .end packed-switch
.end method
