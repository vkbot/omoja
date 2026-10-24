.class public Lcom/mega/nexus/content/pm/MegaIPackageManager;
.super Lcom/mega/nexus/MegaNexusManager;
.source "MegaIPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/content/pm/MegaIPackageManager$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/mega/nexus/MegaNexusManager;-><init>()V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/content/pm/MegaIPackageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/content/pm/MegaIPackageManager$1;

    .line 14
    invoke-direct {p0}, Lcom/mega/nexus/content/pm/MegaIPackageManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mega/nexus/content/pm/MegaIPackageManager;
    .locals 1

    .line 24
    invoke-static {}, Lcom/mega/nexus/content/pm/MegaIPackageManager$Holder;->access$100()Lcom/mega/nexus/content/pm/MegaIPackageManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/pm/MegaIPackageManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    .line 57
    invoke-interface {v1, p1, p2, p3}, Lcom/mega/nexus/IMegaNexusManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/pm/MegaIPackageManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    .line 31
    invoke-interface {v1, p1, p2}, Lcom/mega/nexus/IMegaNexusManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 35
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 38
    :cond_0
    return-object v0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/mega/nexus/content/pm/MegaIPackageManager;->getNexusService()Lcom/mega/nexus/IMegaNexusManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/mega/nexus/IMegaNexusManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 49
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method
