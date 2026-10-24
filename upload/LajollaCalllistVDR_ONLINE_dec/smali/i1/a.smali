.class public final Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lcom/callisto/auto/gatherer/model/DevicesRoot;

.field public final c:Lcom/callisto/auto/gatherer/model/BaseRequest;

.field public final d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/DevicesRoot;

    invoke-direct {v0}, Lcom/callisto/auto/gatherer/model/DevicesRoot;-><init>()V

    iput-object v0, p0, Li1/a;->b:Lcom/callisto/auto/gatherer/model/DevicesRoot;

    new-instance v0, Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-direct {v0, p1}, Lcom/callisto/auto/gatherer/model/BaseRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Li1/a;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-static {}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->getInstance()Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    move-result-object p1

    iput-object p1, p0, Li1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    const/4 p1, 0x0

    iput-boolean p1, p0, Li1/a;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "/system/bin/su"

    const-string v1, "/system/xbin/su"

    const-string v2, "/sbin/su"

    const-string v3, "/system/su"

    const-string v4, "/system/bin/.ext/su"

    const-string v5, "/system/xbin/mu"

    const-string v6, "/system/app/Superuser.apk"

    const-string v7, "/data/data/com.noshufou.android.su"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "a"

    invoke-static {v5, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/callisto/auto/gatherer/utils/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    :cond_4
    move v1, v4

    :cond_5
    iget-boolean v0, p0, Li1/a;->e:Z

    if-eq v0, v1, :cond_6

    iput-boolean v1, p0, Li1/a;->e:Z

    iget-object v0, p0, Li1/a;->b:Lcom/callisto/auto/gatherer/model/DevicesRoot;

    invoke-virtual {v0, v1}, Lcom/callisto/auto/gatherer/model/DevicesRoot;->setRoot(Z)V

    const-string v1, "b010609"

    iget-object v2, p0, Li1/a;->c:Lcom/callisto/auto/gatherer/model/BaseRequest;

    invoke-virtual {v2, v1, v0}, Lcom/callisto/auto/gatherer/model/BaseRequest;->setDataInfo(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "callisto_vdr"

    const-string v1, "Get event:b010609"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Li1/a;->d:Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;

    invoke-virtual {v0, v2}, Lcom/callisto/auto/gatherer/repository/MyNetworkRequest;->performPostRequest(Lcom/callisto/auto/gatherer/model/BaseRequest;)V

    :cond_6
    return-void
.end method
