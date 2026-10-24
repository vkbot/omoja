.class Lcom/mega/nexus/MegaNexusManager$1;
.super Ljava/lang/Object;
.source "MegaNexusManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/MegaNexusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 66
    const-string v0, "MegaNexusManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/mega/nexus/MegaNexusManager;->access$000()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/mega/nexus/MegaNexusManager;->access$000()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mega/nexus/MegaNexusManager;->access$102(Lcom/mega/nexus/IMegaNexusManager;)Lcom/mega/nexus/IMegaNexusManager;

    .line 71
    invoke-static {v0}, Lcom/mega/nexus/MegaNexusManager;->access$202(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
