.class Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;
.super Landroid/os/Handler;
.source "TboxProtocolConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/peripheral/TboxProtocolConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_HANDLER_UPDATE_TIMEOUT:I = 0x8a2

.field static final MSG_HANDLER_VERSION_TIMEOUT:I = 0x8a3

.field static final REQ_ACTIVE:I = 0x899

.field static final REQ_GET_VERSION:I = 0x89a

.field static final REQ_UPDATE:I = 0x898

.field static final TIMEOUT_GET_VERSION:I = 0x1388

.field static final TIMEOUT_UPDATE:I = 0x1770


# instance fields
.field final synthetic this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;


# direct methods
.method constructor <init>(Lcom/mega/update/peripheral/TboxProtocolConverter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 139
    iput-object p1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    .line 140
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 141
    return-void
.end method

.method private doHandleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 164
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8a2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v3, 0x8a3

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 193
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->removeTimer(I)V

    .line 194
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$500(Lcom/mega/update/peripheral/TboxProtocolConverter;)Z

    .line 195
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v3, v0, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->startTimer(IJ)V

    .line 196
    goto/16 :goto_1

    .line 184
    :pswitch_1
    new-instance v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-direct {v0}, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;-><init>()V

    .line 185
    .local v0, "resultInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
    iput v2, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;->ecu_result:I

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "mesg":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v6, v4, v2

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {}, Lcom/mega/update/rpc/MegaConnector;->self()Lcom/mega/update/rpc/MegaConnector;

    move-result-object v2

    const-string v4, "update/tbox/active/res"

    invoke-virtual {v2, v4, v1}, Lcom/mega/update/rpc/MegaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 191
    goto :goto_1

    .line 166
    .end local v0    # "resultInfo":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$ResultInfo;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "mesg":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update is running, new request is refused!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;

    .line 171
    .local v0, "json":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;
    iget-object v3, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    iget-object v4, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$300(Lcom/mega/update/peripheral/TboxProtocolConverter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    iget-object v2, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v2}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->removeTimer(I)V

    .line 175
    iget-object v2, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    iget-object v4, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;->ecu_sha256:Ljava/lang/String;

    iget-object v5, v0, Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;->ecu_ota_file:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$400(Lcom/mega/update/peripheral/TboxProtocolConverter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    const-wide/16 v4, 0x1770

    invoke-virtual {p0, v1, v4, v5}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->startTimer(IJ)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v1}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetupServer error!"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    goto :goto_1

    .line 202
    .end local v0    # "json":Lcom/mega/update/peripheral/TboxProtocolUtil$PARAMS$UpdateJson;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handle verstion timeout!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    goto :goto_1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->this$0:Lcom/mega/update/peripheral/TboxProtocolConverter;

    invoke-static {v0}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$200(Lcom/mega/update/peripheral/TboxProtocolConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handle update timeout!"

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    nop

    .line 207
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x898
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doHandleMessage exception"

    invoke-static {v1, v2}, Lcom/mega/update/util/LogUtil;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public removeTimer(I)V
    .locals 3
    .param p1, "message"    # I

    .line 149
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTimer message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->removeMessages(I)V

    .line 151
    return-void
.end method

.method public startTimer(IJ)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "delay"    # J

    .line 144
    invoke-static {}, Lcom/mega/update/peripheral/TboxProtocolConverter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimer request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mega/update/util/LogUtil;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/mega/update/peripheral/TboxProtocolConverter$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    return-void
.end method
