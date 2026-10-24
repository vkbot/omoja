.class public Lcom/mega/engineeringmode/service/IcEngService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/storage/StorageManager;

.field public b:Ljava/lang/String;

.field public final c:Lcom/mega/logger/MegaLogManager;

.field public d:Lmega/car/MegaCarProperty;

.field public final e:Landroid/os/HandlerThread;

.field public f:Lcom/mega/engineeringmode/service/IcEngService$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/mega/logger/MegaLogManager;

    invoke-direct {v0}, Lcom/mega/logger/MegaLogManager;-><init>()V

    iput-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->c:Lcom/mega/logger/MegaLogManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "eng_logger_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->e:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "IcEngService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmega/car/MegaCarProperty;->getInstance()Lmega/car/MegaCarProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->d:Lmega/car/MegaCarProperty;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->a:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/mega/engineeringmode/service/IcEngService$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mega/engineeringmode/service/IcEngService$a;-><init>(Lcom/mega/engineeringmode/service/IcEngService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mega/engineeringmode/service/IcEngService;->f:Lcom/mega/engineeringmode/service/IcEngService$a;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "IcEngService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/service/IcEngService;->e:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "IcEngService"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "yyyyMMddHHmmss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALLLog_"

    invoke-static {v1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mega/engineeringmode/service/IcEngService;->f:Lcom/mega/engineeringmode/service/IcEngService$a;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->f:Lcom/mega/engineeringmode/service/IcEngService$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
