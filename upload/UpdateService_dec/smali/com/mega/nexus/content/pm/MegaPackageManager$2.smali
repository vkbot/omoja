.class Lcom/mega/nexus/content/pm/MegaPackageManager$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "MegaPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/nexus/content/pm/MegaPackageManager;->deleteApplicationCacheFiles(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;


# direct methods
.method constructor <init>(Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/mega/nexus/content/pm/MegaPackageManager$2;->val$observer:Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 150
    iget-object v0, p0, Lcom/mega/nexus/content/pm/MegaPackageManager$2;->val$observer:Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;

    invoke-interface {v0, p1, p2}, Lcom/mega/nexus/content/pm/MegaIPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 151
    return-void
.end method
