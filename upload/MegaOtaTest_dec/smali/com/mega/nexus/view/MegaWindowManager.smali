.class public Lcom/mega/nexus/view/MegaWindowManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/view/MegaWindowManager$Holder;
    }
.end annotation


# static fields
.field private static final WINDOW_MANAGER_SERVICE_CLASS_NAME:Ljava/lang/String; = "android.view.IWindowManager"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    .line 18
    const-string v0, "android.view.WindowManagerGlobal"

    const-string v1, "getWindowManagerService"

    invoke-virtual {p0, v0, v1}, Lcom/mega/nexus/view/MegaWindowManager;->setMethodName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/view/MegaWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/view/MegaWindowManager$1;

    .line 9
    invoke-direct {p0}, Lcom/mega/nexus/view/MegaWindowManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/view/MegaWindowManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/mega/nexus/view/MegaWindowManager$Holder;->access$100()Lcom/mega/nexus/view/MegaWindowManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mega/nexus/view/IUserActivityListener;

    .line 27
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/view/MegaWindowManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/mega/nexus/view/MegaWindowManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->registerUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unRegisterUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mega/nexus/view/IUserActivityListener;

    .line 37
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/view/MegaWindowManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/mega/nexus/view/MegaWindowManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mega/nexus/IMegaNexusManager;->unRegisterUserActivityListener(Lcom/mega/nexus/view/IUserActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
