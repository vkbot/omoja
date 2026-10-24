.class public Lcom/android/server/wm/MegaActivityManagerService;
.super Lcom/android/server/wm/ActivityTaskManagerService;
.source ""


# static fields
.field public static final EXTERNAL_DISPLAYID:I = 0x1

.field private static final e:Ljava/lang/String; = "MegaAMS"

.field private static final f:Ljava/lang/String; = "com.mega.settings.MULTI_WINDOW"

.field static g:Ljava/lang/String;


# instance fields
.field private a:Lcom/android/server/wm/o;

.field private final b:Lcom/android/server/wm/v;

.field private c:Z

.field private final d:Lcom/android/server/wm/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/wm/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/o;-><init>(Lcom/android/server/wm/MegaActivityManagerService;Lcom/android/server/wm/n;)V

    iput-object v0, p0, Lcom/android/server/wm/MegaActivityManagerService;->a:Lcom/android/server/wm/o;

    new-instance v0, Lcom/android/server/wm/o;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/o;-><init>(Lcom/android/server/wm/MegaActivityManagerService;Lcom/android/server/wm/n;)V

    const-string v2, "mega_activity_manager_injector"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/MegaActivityManagerService;->H(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/MegaActivityManagerService;->c:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MegaActivityManagerService isFlyingScreenSupported:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/MegaActivityManagerService;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MegaAMS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/wm/MegaActivityManagerService;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/wm/v;

    invoke-direct {p1, p0}, Lcom/android/server/wm/v;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/MegaActivityManagerService;->b:Lcom/android/server/wm/v;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/MegaActivityManagerService;->b:Lcom/android/server/wm/v;

    :goto_0
    new-instance p1, Lcom/android/server/wm/q;

    invoke-direct {p1, v1}, Lcom/android/server/wm/q;-><init>(Lcom/android/server/wm/n;)V

    iput-object p1, p0, Lcom/android/server/wm/MegaActivityManagerService;->d:Lcom/android/server/wm/q;

    return-void
.end method

.method static synthetic A(Lcom/android/server/wm/MegaActivityManagerService;I)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/MegaActivityManagerService;->G(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcom/android/server/wm/MegaActivityManagerService;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/MegaActivityManagerService;->E(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/v;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MegaActivityManagerService;->b:Lcom/android/server/wm/v;

    return-object p0
.end method

.method static synthetic D(Lcom/android/server/wm/MegaActivityManagerService;)Lcom/android/server/wm/q;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MegaActivityManagerService;->d:Lcom/android/server/wm/q;

    return-object p0
.end method

.method private E(I)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const-string v1, "MegaAMS"

    if-nez p1, :cond_0

    const-string p0, "getTopResumedActivityByDisplay display null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "taskDisplayArea is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/MegaActivityManagerService;->F(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v3, v5

    :cond_3
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4, v2, v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/MegaActivityManagerService;->F(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v4, v5

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/MegaActivityManagerService;->F(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "topActivityFullScreen = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", topActivityPrimary = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", topActivitySecondary = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", resumeActivities = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private F(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private G(I)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "MegaAMS"

    if-nez p0, :cond_0

    const-string p0, "getTopResumedActivityByDisplay display null"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getTopResumedActivityByDisplay topStack null"

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "getTopResumedActivityByDisplay topActivity null"

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private H(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111009a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MegaAMS"

    const-string v0, "isFlyingScreenSupported"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static I(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.mega.settings.MULTI_WINDOW"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/n;

    invoke-direct {v2, p1, p0}, Lcom/android/server/wm/n;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 p0, 0x0

    const/4 p1, -0x1

    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static J(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.mega.settings.MULTI_WINDOW"

    const/4 v2, -0x2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/server/wm/MegaActivityManagerService;->g:Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    sput-object p0, Lcom/android/server/wm/MegaActivityManagerService;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    return v0
.end method


# virtual methods
.method protected createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;
    .locals 2

    new-instance v0, Lcom/android/server/wm/p;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/p;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->initialize()V

    return-object v0
.end method

.method public getMegaActivityManagerInjector()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/MegaActivityManagerService;->a:Lcom/android/server/wm/o;

    return-object p0
.end method

.method public installSystemProviders()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->installSystemProviders()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/MegaActivityManagerService;->J(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-static {v0, p0}, Lcom/android/server/wm/MegaActivityManagerService;->I(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method protected start()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    iget-boolean v0, p0, Lcom/android/server/wm/MegaActivityManagerService;->c:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/server/wm/w;

    iget-object p0, p0, Lcom/android/server/wm/MegaActivityManagerService;->b:Lcom/android/server/wm/v;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
