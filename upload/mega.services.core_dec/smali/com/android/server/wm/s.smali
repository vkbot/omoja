.class final Lcom/android/server/wm/s;
.super Lb/a/a/a/g;
.source ""


# instance fields
.field final synthetic e:Lcom/android/server/wm/MegaWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MegaWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/s;->e:Lcom/android/server/wm/MegaWindowManagerService;

    invoke-direct {p0}, Lb/a/a/a/g;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MegaWindowManagerService;Lcom/android/server/wm/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/s;-><init>(Lcom/android/server/wm/MegaWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public c(La/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/s;->e:Lcom/android/server/wm/MegaWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaWindowManagerService;->A(Lcom/android/server/wm/MegaWindowManagerService;)Lcom/android/server/policy/MegaPhoneWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/s;->e:Lcom/android/server/wm/MegaWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaWindowManagerService;->A(Lcom/android/server/wm/MegaWindowManagerService;)Lcom/android/server/policy/MegaPhoneWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MegaPhoneWindowManager;->registerUserActivityTimeoutListener(La/a/p;)V

    :cond_0
    return-void
.end method

.method public l(La/a/p;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/s;->e:Lcom/android/server/wm/MegaWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/MegaWindowManagerService;->A(Lcom/android/server/wm/MegaWindowManagerService;)Lcom/android/server/policy/MegaPhoneWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/s;->e:Lcom/android/server/wm/MegaWindowManagerService;

    invoke-static {p0}, Lcom/android/server/wm/MegaWindowManagerService;->A(Lcom/android/server/wm/MegaWindowManagerService;)Lcom/android/server/policy/MegaPhoneWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MegaPhoneWindowManager;->unRegisterUserActivityTimeoutListener(La/a/p;)V

    :cond_0
    return-void
.end method

.method public u(IZ)V
    .locals 0

    return-void
.end method
