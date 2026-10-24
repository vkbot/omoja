.class public Lcom/mega/engineeringmode/service/DidControllerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# instance fields
.field public a:Lmega/car/MegaCarProperty;

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/WindowManager$LayoutParams;

.field public e:Z

.field public f:Lm1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onChangeEvent(Lmega/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1    # Lmega/car/hardware/CarPropertyValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onChangeEvent, prop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DidControllerService"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x2b000002

    if-ne v0, v1, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->c:Landroid/view/WindowManager;

    iget-object p1, p1, Lm1/a;->a:Landroid/view/View;

    iget-object p0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, p0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    iget-object p0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->c:Landroid/view/WindowManager;

    iget-object p1, p1, Lm1/a;->a:Landroid/view/View;

    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->a:Lmega/car/MegaCarProperty;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->b:Ljava/util/HashSet;

    const v1, 0x2b000002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->a:Lmega/car/MegaCarProperty;

    iget-object v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0, v1}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string p0, "DidControllerService"

    const-string v0, "get window manager failed"

    invoke-static {p0, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x420

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->d:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lm1/a;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lm1/a;->a:Landroid/view/View;

    const/16 v2, 0x1606

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->a:Lmega/car/MegaCarProperty;

    iget-object v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0, v1}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    return-void
.end method

.method public final onErrorEvent(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onErrorEvent propId : 0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in area : 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DidControllerService"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "DidControllerService"

    const-string/jumbo v1, "onStartCommand "

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->a:Lmega/car/MegaCarProperty;

    const v1, 0x2b000002

    invoke-virtual {v0, v1}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    iget-object v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->c:Landroid/view/WindowManager;

    iget-object v0, v0, Lm1/a;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mega/engineeringmode/service/DidControllerService;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mega/engineeringmode/service/DidControllerService;->f:Lm1/a;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->e:Z

    iget-object v1, p0, Lcom/mega/engineeringmode/service/DidControllerService;->c:Landroid/view/WindowManager;

    iget-object v0, v0, Lm1/a;->a:Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
