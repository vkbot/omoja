.class Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;
.super Landroid/database/ContentObserver;
.source "MegaDmcOtaAssistImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

.field final synthetic val$mResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 292
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    iput-object p3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->val$mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 295
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 296
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->val$mResolver:Landroid/content/ContentResolver;

    const-string v1, "mega_android_power_status"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/mega/nexus/provider/MegaSettings;->getIntForUserSystem(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 297
    .local v0, "powerStatus":I
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power status change, finish clock activity. power status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLastPowerStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status_temp_working: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status_on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v1}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    if-ne v0, v3, :cond_0

    .line 302
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;->this$0:Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    invoke-static {v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    :cond_0
    invoke-static {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->access$302(I)I

    .line 306
    return-void
.end method
