.class Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;
.super Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;
.source "MegaActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopStackExchangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/nexus/app/MegaActivityManager;


# direct methods
.method private constructor <init>(Lcom/mega/nexus/app/MegaActivityManager;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-direct {p0}, Lcom/mega/nexus/app/ITopStackExchangeListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mega/nexus/app/MegaActivityManager;Lcom/mega/nexus/app/MegaActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mega/nexus/app/MegaActivityManager;
    .param p2, "x1"    # Lcom/mega/nexus/app/MegaActivityManager$1;

    .line 267
    invoke-direct {p0, p1}, Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;-><init>(Lcom/mega/nexus/app/MegaActivityManager;)V

    return-void
.end method


# virtual methods
.method public onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p1, "packageName1"    # Ljava/lang/String;
    .param p2, "displayId1"    # I
    .param p3, "packageName2"    # Ljava/lang/String;
    .param p4, "displayId2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$TopStackExchangeListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$400(Lcom/mega/nexus/app/MegaActivityManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/nexus/app/TopStackListener;

    .line 272
    .local v1, "listener":Lcom/mega/nexus/app/TopStackListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTopStackExchanged,  packageName1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayId1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", displayId2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MegaNexusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mega/nexus/app/TopStackListener;->onTopStackExchanged(Ljava/lang/String;ILjava/lang/String;I)V

    .line 276
    .end local v1    # "listener":Lcom/mega/nexus/app/TopStackListener;
    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method
