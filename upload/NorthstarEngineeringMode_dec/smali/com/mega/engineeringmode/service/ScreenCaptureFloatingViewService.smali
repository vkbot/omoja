.class public Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public a:Landroid/view/WindowManager;

.field public b:Landroid/view/WindowManager$LayoutParams;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Z

.field public g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hideCapView  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCaptureFloatingViewService"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object v1

    iput-boolean v0, v1, Ln2/l;->a:Z

    iget-object v1, v1, Ln2/l;->b:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->c:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v3}, Lo3/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "activityManager.getRunningTasks(1)"

    invoke-static {v2, v3}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lo3/h;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cn!!.packageName"

    invoke-static {v0, v2}, Lo3/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    sget-object v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    iget-object v0, v0, Lcom/mega/engineeringmode/EngineeringModeApplication;->a:Ld1/a;

    if-nez v0, :cond_1

    const-string v0, "EngineeringModeApplication"

    const-string v1, "mLifeCallbck == null"

    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ld1/a;->a()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f1200af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p0, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x5

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v0, 0x1cc

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ScreenCaptureFloatingViewService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "ScreenCaptureFloatingViewService"

    const-string/jumbo p2, "onStartCommand"

    invoke-static {p1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->f:Z

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object p2

    iput-boolean p1, p2, Ln2/l;->a:Z

    iget-object p1, p2, Ln2/l;->b:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00fb

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->c:Landroid/view/View;

    const p2, 0x7f0a01f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->d:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->c:Landroid/view/View;

    const p2, 0x7f0a00e4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->e:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->c:Landroid/view/View;

    const p2, 0x7f0a0422

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->g:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->c:Landroid/view/View;

    iget-object p3, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->d:Landroid/widget/ImageView;

    new-instance p2, Lj2/a;

    invoke-direct {p2, p0}, Lj2/a;-><init>(Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/service/ScreenCaptureFloatingViewService;->e:Landroid/widget/ImageView;

    new-instance p2, Lx0/b;

    const/16 p3, 0x15

    invoke-direct {p2, p3, p0}, Lx0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method
