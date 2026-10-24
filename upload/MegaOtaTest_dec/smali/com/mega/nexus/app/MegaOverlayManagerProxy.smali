.class public Lcom/mega/nexus/app/MegaOverlayManagerProxy;
.super Ljava/lang/Object;
.source "MegaOverlayManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/MegaOverlayManagerProxy$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MegaOverlayManager"


# instance fields
.field mOverlayManager:Landroid/content/om/IOverlayManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    nop

    .line 18
    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/app/MegaOverlayManagerProxy;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/app/MegaOverlayManagerProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/app/MegaOverlayManagerProxy$1;

    .line 8
    invoke-direct {p0}, Lcom/mega/nexus/app/MegaOverlayManagerProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/app/MegaOverlayManagerProxy;
    .locals 1

    .line 22
    invoke-static {}, Lcom/mega/nexus/app/MegaOverlayManagerProxy$Holder;->access$100()Lcom/mega/nexus/app/MegaOverlayManagerProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setOverlayEnabled(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mega/nexus/app/MegaOverlayManagerProxy;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public setOverlayEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mega/nexus/app/MegaOverlayManagerProxy;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method
