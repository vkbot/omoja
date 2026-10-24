.class public Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;
.super Ljava/lang/Object;
.source "MegaEcuOtaUpdateImpl.java"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaUpdateInterface;
.implements Lcom/mega/update/sdk/utils/OtaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS;
    }
.end annotation


# static fields
.field public static final OTA_PACKAGE_FOLDER:Ljava/lang/String; = "/ota/package"

.field public static final OTA_QNX_PACKAGE_FOLDER:Ljava/lang/String; = "/ota/android/package"

.field private static final TAG:Ljava/lang/String; = "MegaEcuOtaUpdateImpl"


# instance fields
.field public final ACTIVE_REQ:Ljava/lang/String;

.field public final ACTIVE_RES:Ljava/lang/String;

.field public final INACTIVE_REQ:Ljava/lang/String;

.field public final INACTIVE_RES:Ljava/lang/String;

.field public final PROGRESS:Ljava/lang/String;

.field public final REBOOT_REQ:Ljava/lang/String;

.field public final RESULT:Ljava/lang/String;

.field public final START_REQ:Ljava/lang/String;

.field public final START_RES:Ljava/lang/String;

.field public final VERSION_REQ:Ljava/lang/String;

.field public final VERSION_RES:Ljava/lang/String;

.field private ecuVersionCallback:Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private mApplicationContext:Landroid/content/Context;

.field public mChildid:I

.field public mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

.field public mEcuName:Ljava/lang/String;

.field private mEcuUpdateFile:Ljava/io/File;

.field private mOtaCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ecu_name"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "childId"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mEcuUpdateFile:Ljava/io/File;

    .line 57
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mApplicationContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mEcuName:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/start/req"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_REQ:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/start/res"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_RES:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/active/req"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ACTIVE_REQ:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/active/res"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ACTIVE_RES:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/inactive/req"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->INACTIVE_REQ:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/inactive/res"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->INACTIVE_RES:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/reboot"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->REBOOT_REQ:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/version/req"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_REQ:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/version/res"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_RES:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/progress"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->PROGRESS:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->RESULT:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    .line 71
    invoke-static {}, Lcom/mega/update/sdk/utils/OtaConnector;->self()Lcom/mega/update/sdk/utils/OtaConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    .line 72
    iput p4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    .line 73
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->RESULT:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->INACTIVE_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ACTIVE_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getChildId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    return v0
.end method

.method public getDeviceInfo()Lcom/mega/update/sdk/utils/OtaDeviceInfo;
    .locals 6

    .line 207
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 208
    new-instance v0, Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-direct {v0}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    .line 210
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_REQ:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 213
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5dc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    nop

    .line 218
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v1, 0x0

    return-object v1
.end method

.method public getState()Lcom/mega/update/service/UpdateState;
    .locals 1

    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoragePath()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "/ota/package"

    return-object v0
.end method

.method public isConnect()Z
    .locals 1

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method public onFinishUpgrade(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 187
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->RESULT:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->INACTIVE_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ACTIVE_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_RES:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {p2}, Lcom/mega/update/sdk/utils/OtaUtil;->getStringFromArrayList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "mesg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mChildid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MegaEcuOtaUpdateImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_RES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Parse Json Fail."

    if-eqz v1, :cond_2

    .line 232
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$1;

    invoke-direct {v4, p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$1;-><init>(Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;)V

    invoke-virtual {v4}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;

    .line 233
    .local v1, "ri":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;
    if-nez v1, :cond_0

    .line 234
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    iget v3, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_childid:I

    if-eq v2, v3, :cond_1

    .line 237
    return-void

    .line 239
    .end local v1    # "ri":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;
    :cond_1
    goto/16 :goto_7

    :cond_2
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->VERSION_RES:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 241
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$2;

    invoke-direct {v4, p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$2;-><init>(Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;)V

    invoke-virtual {v4}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;

    .line 242
    .local v1, "vi":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;
    if-nez v1, :cond_3

    .line 243
    const-string v4, "VersionInfo is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_3
    if-eqz v1, :cond_4

    iget v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    iget v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_childid:I

    if-eq v4, v5, :cond_4

    .line 246
    return-void

    .line 248
    :cond_4
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    iget v4, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_result:I

    if-nez v4, :cond_7

    .line 249
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_boot_version:Ljava/lang/String;

    invoke-static {v5}, Lcom/mega/update/sdk/utils/OtaUtil;->transformVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setBootVersion(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_hard_version:Ljava/lang/String;

    invoke-static {v5}, Lcom/mega/update/sdk/utils/OtaUtil;->transformVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwVersion(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-static {v5}, Lcom/mega/update/sdk/utils/OtaUtil;->transformVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 252
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

    if-eqz v4, :cond_5

    .line 253
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

    iget-object v5, v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;->sn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSerialNumber(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

    iget-object v5, v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;->part_no:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setPartNumber(Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

    iget-object v5, v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;->vendor_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSupplierCode(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_extra_info:Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;

    iget-object v5, v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ExtraInfo;->calib_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setCalibVersion(Ljava/lang/String;)V

    .line 258
    :cond_5
    const-string v4, "apa/version"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_boot_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setBootVersion(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_hard_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setHwVersion(Ljava/lang/String;)V

    .line 261
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;->ecu_soft_version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaDeviceInfo;->setSwVersion(Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ecuVersionCallback:Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    if-eqz v4, :cond_6

    .line 263
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ecuVersionCallback:Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    iget-object v5, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-interface {v4, v5}, Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;->otaApaVersion(Lcom/mega/update/sdk/utils/OtaDeviceInfo;)V

    .line 266
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v6, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mDeviceInfo:Lcom/mega/update/sdk/utils/OtaDeviceInfo;

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_7
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_8

    .line 269
    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1    # "vi":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$VersionInfo;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_0
    goto/16 :goto_7

    .line 275
    :cond_9
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->PROGRESS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xb

    if-eqz v1, :cond_f

    .line 276
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$3;

    invoke-direct {v5, p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$3;-><init>(Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;)V

    invoke-virtual {v5}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;

    .line 277
    .local v1, "pi":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;
    if-nez v1, :cond_a

    .line 278
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 281
    :cond_a
    iget v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    iget v3, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_childid:I

    if-eq v2, v3, :cond_b

    .line 282
    return-void

    .line 284
    :cond_b
    iget v2, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_result:I

    if-nez v2, :cond_c

    .line 286
    const/16 v2, 0xa

    iput v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    goto :goto_1

    .line 288
    :cond_c
    iput v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    .line 291
    :goto_1
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 292
    .local v3, "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_name:Ljava/lang/String;

    iget v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_childid:I

    iget v6, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_progress:I

    invoke-interface {v3, v4, v5, v6}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateProgress(Ljava/lang/String;II)V

    .line 293
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_2

    .line 294
    :cond_d
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 295
    .restart local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_name:Ljava/lang/String;

    iget v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_childid:I

    iget v6, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;->ecu_result:I

    iget v7, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V

    .line 296
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_3

    .line 294
    .end local v1    # "pi":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ProgressInfo;
    :cond_e
    goto :goto_6

    .line 297
    :cond_f
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->RESULT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$4;

    invoke-direct {v5, p0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$4;-><init>(Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;)V

    invoke-virtual {v5}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;

    .line 299
    .local v1, "ri":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;
    if-nez v1, :cond_10

    .line 300
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 303
    :cond_10
    iget v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    iget v3, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_childid:I

    if-eq v2, v3, :cond_11

    .line 304
    return-void

    .line 306
    :cond_11
    iget v2, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_result:I

    if-nez v2, :cond_12

    .line 308
    const/16 v2, 0xc

    iput v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    goto :goto_4

    .line 310
    :cond_12
    iput v4, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    .line 312
    :goto_4
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mEcuUpdateFile:Ljava/io/File;

    if-eqz v2, :cond_13

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 317
    :cond_13
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 318
    .restart local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_name:Ljava/lang/String;

    iget v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_childid:I

    iget v6, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;->ecu_result:I

    iget v7, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mStatus:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;->otaUpdateStatus(Ljava/lang/String;III)V

    .line 319
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;
    goto :goto_5

    .line 297
    .end local v1    # "ri":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$ResultInfo;
    :cond_14
    :goto_6
    nop

    .line 321
    :cond_15
    :goto_7
    return-void
.end method

.method public registerCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)Z
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 197
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChildId(I)V
    .locals 0
    .param p1, "childId"    # I

    .line 82
    iput p1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    .line 83
    return-void
.end method

.method public setEcuVersionCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    .line 222
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->ecuVersionCallback:Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public setOtaMode(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "extension"    # I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public triggerActivate()I
    .locals 1

    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method public triggerFlash(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 330
    const/4 v0, -0x1

    return v0
.end method

.method public triggerResume()I
    .locals 1

    .line 340
    const/4 v0, -0x1

    return v0
.end method

.method public triggerUpgrade(Ljava/io/File;Landroid/os/Bundle;)I
    .locals 16
    .param p1, "f"    # Ljava/io/File;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 144
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "childId"

    const-string v4, "/ota/package"

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    return v5

    .line 147
    :cond_0
    iput-object v2, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mEcuUpdateFile:Ljava/io/File;

    .line 148
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/ota/package/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "filePath":Ljava/lang/String;
    invoke-static {v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->createDirectoryIfNotExists(Ljava/lang/String;)Z

    .line 152
    const/4 v8, 0x0

    invoke-static {v4, v2, v8}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->clearDirectory(Ljava/lang/String;Ljava/io/File;Z)Z

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/mega/update/sdk/utils/OtaUtil;->fileIsInOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "MegaEcuOtaUpdateImpl"

    if-nez v4, :cond_1

    .line 155
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/mega/update/sdk/utils/OtaUtil;->cpFileToOtaFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    const-string v0, "cpFileToOtaFolder fail "

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v5

    .line 161
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    .line 165
    :cond_2
    invoke-static {v7}, Lcom/mega/update/sdk/utils/OtaUtil;->getFileSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "sha256":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/ota/android/package/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "qnxFilePath":Ljava/lang/String;
    new-instance v10, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;

    iget-object v11, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mEcuName:Ljava/lang/String;

    iget v12, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mChildid:I

    invoke-direct {v10, v11, v12, v4, v0}, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v10, "json":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v11, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "jsonStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sha256: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " qnxFilePath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " jsonStr : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v13, v12

    move v14, v8

    :goto_0
    if-ge v14, v13, :cond_3

    aget-byte v15, v12, v14

    .local v15, "b":B
    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v15    # "b":B
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 172
    :cond_3
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    iget-object v12, v1, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->START_REQ:Ljava/lang/String;

    invoke-virtual {v5, v12, v9}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    return v8

    .line 174
    .end local v0    # "sha256":Ljava/lang/String;
    .end local v4    # "qnxFilePath":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v9    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v10    # "json":Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl$PARAMS$UpdateJson;
    .end local v11    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v4, 0x1

    return v4
.end method

.method public unregisterCallback(Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaUpdateInterface$OtaUpdateStatusCallback;

    .line 202
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaEcuOtaUpdateImpl;->mOtaCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method
