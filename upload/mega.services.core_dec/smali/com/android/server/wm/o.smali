.class final Lcom/android/server/wm/o;
.super Lb/a/a/a/c;
.source ""


# instance fields
.field final synthetic n:Lcom/android/server/wm/MegaActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MegaActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-direct {p0}, Lb/a/a/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MegaActivityManagerService;Lcom/android/server/wm/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/o;-><init>(Lcom/android/server/wm/MegaActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public e(II)Z
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "moveTopStackToDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v1}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/v;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->b(II)V

    :cond_0
    return v0

    :cond_1
    const-string p0, "moveTopStackToDisplay,device not support flying screen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public i(I)Landroid/view/SurfaceControl;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(La/a/d;)V
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "unRegisterTopStackExchangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/v;->Q(La/a/d;)V

    :cond_0
    return-void
.end method

.method public k(La/a/d;)V
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "registerTopStackExchangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v1}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mMoveToDisplaySevice.registerTopStackExchangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/v;->M(La/a/d;)V

    :cond_0
    return-void
.end method

.method public m(La/a/h;)V
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "unRegisterFlyingStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/v;->P(La/a/h;)V

    :cond_0
    return-void
.end method

.method public n(II)Z
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "exchangeDisplayTopStack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v1}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/v;->p(II)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "exchangeDisplayTopStack,device not support flying screen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public o(La/a/h;)V
    .locals 2

    const-string v0, "MegaAMS"

    const-string v1, "registerFlyingStateChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v1}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mMoveToDisplaySevice.registerFlyingStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/v;->L(La/a/h;)V

    :cond_0
    return-void
.end method

.method public p(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/MegaActivityManagerService;->A(Lcom/android/server/wm/MegaActivityManagerService;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public s(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/v;->N(I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "MegaAMS"

    const-string p1, "setFlyingScreenMode,device not support flying screen"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public t(La/a/l;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->D(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/q;->a(La/a/l;)V

    return-void
.end method

.method public v(I)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wm/MegaActivityManagerService;->B(Lcom/android/server/wm/MegaActivityManagerService;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w(La/a/l;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/o;->n:Lcom/android/server/wm/MegaActivityManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaActivityManagerService;->D(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/q;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/q;->f(La/a/l;)V

    return-void
.end method
