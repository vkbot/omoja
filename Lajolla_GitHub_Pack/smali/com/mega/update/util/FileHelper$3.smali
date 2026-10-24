.class Lcom/mega/update/util/FileHelper$3;
.super Ljava/lang/Object;
.source "FileHelper.java"

# interfaces
.implements Lcom/mega/update/rpc/MegaConnector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/util/FileHelper;->socketSendFile(Ljava/lang/String;JLjava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$wapper:Lcom/mega/update/util/FileHelper$ValueResult;


# direct methods
.method constructor <init>(Lcom/mega/update/util/FileHelper$ValueResult;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/mega/update/util/FileHelper$3;->val$wapper:Lcom/mega/update/util/FileHelper$ValueResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
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

    .line 280
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mega/update/util/FileHelper$3;->val$wapper:Lcom/mega/update/util/FileHelper$ValueResult;

    iget-object v0, v0, Lcom/mega/update/util/FileHelper$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Lcom/mega/update/util/FileHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "old msg!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/mega/update/util/FileHelper$3;->val$wapper:Lcom/mega/update/util/FileHelper$ValueResult;

    iput-object p2, v0, Lcom/mega/update/util/FileHelper$ValueResult;->ret:Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/mega/update/util/FileHelper$3;->val$wapper:Lcom/mega/update/util/FileHelper$ValueResult;

    iget-object v0, v0, Lcom/mega/update/util/FileHelper$ValueResult;->countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 286
    return-void
.end method
