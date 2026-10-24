.class public Lcom/mega/nexus/content/om/MegaOverlayManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaOverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/content/om/MegaOverlayManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOverlayPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/mega/nexus/content/om/MegaOverlayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mega/nexus/content/om/MegaOverlayManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/content/om/MegaOverlayManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/content/om/MegaOverlayManager$1;

    .line 15
    invoke-direct {p0}, Lcom/mega/nexus/content/om/MegaOverlayManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/content/om/MegaOverlayManager;
    .locals 1

    .line 30
    invoke-static {}, Lcom/mega/nexus/content/om/MegaOverlayManager$Holder;->access$100()Lcom/mega/nexus/content/om/MegaOverlayManager;

    move-result-object v0

    return-object v0
.end method

.method private getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-virtual {p0, p1}, Lcom/mega/nexus/content/om/MegaOverlayManager;->getOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/mega/nexus/content/om/MegaOverlayManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getOverlayPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/om/MegaOverlayManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-interface {v0, v1}, Lcom/mega/nexus/IMegaNexusManager;->getOverlayPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/content/om/MegaOverlayManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/mega/nexus/content/om/MegaOverlayManager;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 56
    .local v1, "overlayId":I
    if-lez v1, :cond_0

    .line 57
    move p2, v1

    .line 60
    .end local v1    # "overlayId":I
    :cond_0
    return p2
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 35
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/om/MegaOverlayManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mega/nexus/IMegaNexusManager;->setOverlayEnabled(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/content/om/MegaOverlayManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlayEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 45
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/om/MegaOverlayManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mega/nexus/IMegaNexusManager;->setOverlayEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/mega/nexus/content/om/MegaOverlayManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlayPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/mega/nexus/content/om/MegaOverlayManager;->mOverlayPackageName:Ljava/lang/String;

    .line 77
    return-void
.end method
