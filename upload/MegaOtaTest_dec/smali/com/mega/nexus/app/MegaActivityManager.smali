.class public Lcom/mega/nexus/app/MegaActivityManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;,
        Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;,
        Lcom/mega/nexus/app/MegaActivityManager$Holder;
    }
.end annotation


# static fields
.field public static final ACTIVITY_MANAGER_SERVICE_CLASS_NAME:Ljava/lang/String; = "android.app.IActivityManager"


# instance fields
.field private mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

.field private mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/mega/nexus/app/FlyingScreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskChangeListener:Lcom/mega/nexus/app/IRunningTaskChangeListener;

.field private mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;

.field private mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

.field private mTopStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mega/nexus/app/TopStackListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mListeners:Landroid/util/ArraySet;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackListeners:Ljava/util/ArrayList;

    .line 40
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getService"

    invoke-virtual {p0, v0, v1}, Lcom/mega/nexus/app/MegaActivityManager;->setMethodName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/app/MegaActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/app/MegaActivityManager$1;

    .line 19
    invoke-direct {p0}, Lcom/mega/nexus/app/MegaActivityManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/app/MegaActivityManager;

    .line 19
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mListeners:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mega/nexus/app/MegaActivityManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mega/nexus/app/MegaActivityManager;

    .line 19
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/mega/nexus/app/MegaActivityManager;
    .locals 1

    .line 36
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager$Holder;->access$100()Lcom/mega/nexus/app/MegaActivityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backgroundWhitelistUid(I)V
    .locals 7
    .param p1, "uid"    # I

    .line 64
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "android.app.IActivityManager"

    .line 68
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getReflectService()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "backgroundWhitelistUid"

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->from(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    move-result-object v5

    aput-object v5, v3, v4

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/mega/nexus/util/ReflectionHelpers;->callInstanceMethodWithException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->backgroundWhitelistUid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public exchangeDisplayTopStack(II)Z
    .locals 3
    .param p1, "displayId1"    # I
    .param p2, "displayId2"    # I

    .line 225
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->exchangeDisplayTopStack(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MegaNexusManager"

    const-string v2, "Failed to invoke exchangeDisplayTopStack "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v1, 0x0

    return v1
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 45
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "android.app.IActivityManager"

    .line 49
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getReflectService()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "forceStopPackage"

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    .line 51
    invoke-static {v5, p1}, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->from(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->from(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    move-result-object v5

    aput-object v5, v3, v4

    .line 47
    invoke-static {v0, v1, v2, v3}, Lcom/mega/nexus/util/ReflectionHelpers;->callInstanceMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public getDisplayAllTopResumedActivities(I)Ljava/util/List;
    .locals 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getDisplayAllTopResumedActivities(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MegaNexusManager"

    const-string v2, "Failed to invoke getDisplayAllTopResumedActivities"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayTopResumedActivity(I)Ljava/lang/String;
    .locals 3
    .param p1, "displayId"    # I

    .line 82
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getDisplayTopResumedActivity(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MegaNexusManager"

    const-string v2, "Failed to invoke getDisplayTopResumedActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSurfaceControlByTaskId(I)Landroid/view/SurfaceControl;
    .locals 3
    .param p1, "taskId"    # I

    .line 341
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->getSurfaceControlByTaskId(I)Landroid/view/SurfaceControl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurfaceControlByTaskId fail! Its taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",its stackTrace is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    const-string v2, "MegaNexusManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v1, 0x0

    return-object v1
.end method

.method public moveTopStackToDisplay(II)Z
    .locals 3
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I

    .line 234
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->moveTopStackToDisplay(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MegaNexusManager"

    const-string v2, "Failed to invoke moveTopStackToDisplay "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    const/4 v1, 0x0

    return v1
.end method

.method public registFlyingScreenStateListener(Lcom/mega/nexus/app/FlyingScreenListener;)V
    .locals 3
    .param p1, "flyingScreenListener"    # Lcom/mega/nexus/app/FlyingScreenListener;

    .line 108
    const-string v0, "MegaNexusManager"

    const-string v1, "registFlyingScreenStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

    invoke-direct {v1, p0}, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;-><init>(Lcom/mega/nexus/app/MegaActivityManager;)V

    iput-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

    .line 113
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/nexus/app/MegaActivityManager;->mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

    invoke-interface {v1, v2}, Lcom/mega/nexus/IMegaNexusManager;->registerFlyingStateListener(Lcom/mega/nexus/app/IFlyingScreenStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke registFlyingScreenStateListener "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerTaskChangeListener(Lcom/mega/nexus/app/TaskChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/mega/nexus/app/TaskChangeListener;

    .line 281
    if-nez p1, :cond_0

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;

    if-nez v0, :cond_1

    .line 288
    new-instance v0, Lcom/mega/nexus/app/MegaActivityManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mega/nexus/app/MegaActivityManager$1;-><init>(Lcom/mega/nexus/app/MegaActivityManager;Lcom/mega/nexus/app/TaskChangeListener;)V

    .line 312
    .local v0, "tmpListener":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mega/nexus/IMegaNexusManager;->registerTaskChangeListener(Lcom/mega/nexus/app/IRunningTaskChangeListener;)V

    .line 313
    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListener:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    .line 314
    iput-object p1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskChangeListener fail! Its stackTrace is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    const-string v3, "MegaNexusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 285
    .end local v0    # "tmpListener":Lcom/mega/nexus/app/IRunningTaskChangeListener;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An application should only register one for this listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTopStackListener(Lcom/mega/nexus/app/TopStackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mega/nexus/app/TopStackListener;

    .line 242
    const-string v0, "MegaNexusManager"

    const-string v1, "registerTopStackListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

    if-nez v1, :cond_0

    .line 246
    new-instance v1, Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;-><init>(Lcom/mega/nexus/app/MegaActivityManager;Lcom/mega/nexus/app/MegaActivityManager$1;)V

    iput-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

    .line 247
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

    invoke-interface {v1, v2}, Lcom/mega/nexus/IMegaNexusManager;->registerTopStackExchangeListener(Lcom/mega/nexus/app/ITopStackExchangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke registerTopStackExchangeListener "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setFlyingScreenMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 100
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->setFlyingScreenMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to invoke setFlyingScreenMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MegaNexusManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v1, 0x0

    return v1
.end method

.method public unRegistFlyingScreenStateListener(Lcom/mega/nexus/app/FlyingScreenListener;)V
    .locals 3
    .param p1, "flyingScreenListener"    # Lcom/mega/nexus/app/FlyingScreenListener;

    .line 121
    const-string v0, "MegaNexusManager"

    const-string v1, "unRegistFlyingScreenStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/nexus/app/MegaActivityManager;->mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;

    invoke-interface {v1, v2}, Lcom/mega/nexus/IMegaNexusManager;->unRegisterFlyingStateListener(Lcom/mega/nexus/app/IFlyingScreenStateListener;)V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mFlyingScreenStateListener:Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke unRegistFlyingScreenStateListener "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unRegisterTaskChangeListener(Lcom/mega/nexus/app/TaskChangeListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/mega/nexus/app/TaskChangeListener;

    .line 322
    if-nez p1, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;

    if-ne p1, v0, :cond_1

    .line 327
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListener:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    invoke-interface {v1, v2}, Lcom/mega/nexus/IMegaNexusManager;->unRegisterTaskChangeListener(Lcom/mega/nexus/app/IRunningTaskChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    nop

    :goto_0
    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListener:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    .line 333
    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;

    .line 334
    goto :goto_2

    .line 332
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MegaNexusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterTaskChangeListener fail! Its stackTrace is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListener:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    .line 333
    iput-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTaskChangeListenerForUser:Lcom/mega/nexus/app/TaskChangeListener;

    .line 334
    throw v1

    .line 336
    :cond_1
    :goto_2
    return-void
.end method

.method public unRegisterTopStackListener(Lcom/mega/nexus/app/TopStackListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mega/nexus/app/TopStackListener;

    .line 255
    const-string v0, "MegaNexusManager"

    const-string v1, "unRegisterTopStackListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-static {}, Lcom/mega/nexus/app/MegaActivityManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;

    invoke-interface {v1, v2}, Lcom/mega/nexus/IMegaNexusManager;->unRegisterTopStackExchangeListener(Lcom/mega/nexus/app/ITopStackExchangeListener;)V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mega/nexus/app/MegaActivityManager;->mTopStackExchangeListener:Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to invoke unRegisterTopStackExchangeListener "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
