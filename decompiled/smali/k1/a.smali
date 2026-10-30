.class public final Lk1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lk1/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final b(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(F)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(F)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(F)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(F)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/example/navistart/cores/HUDMassageObj;)V
    .locals 1

    .line 1
    iget v0, p0, Lk1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 41
    .line 42
    .line 43
    :pswitch_2
    return-void

    .line 44
    :pswitch_3
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 45
    .line 46
    .line 47
    :pswitch_4
    return-void

    .line 48
    :pswitch_5
    invoke-static {}, Lv1/d;->a()Lv1/d;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lv1/d;->d()Lv1/c;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lv1/c;->d:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lcom/example/navistart/SpeedBoardService;->a(Lcom/example/navistart/cores/HUDMassageObj;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
