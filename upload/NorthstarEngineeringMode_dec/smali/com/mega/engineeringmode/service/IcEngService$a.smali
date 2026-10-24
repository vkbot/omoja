.class public final Lcom/mega/engineeringmode/service/IcEngService$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/service/IcEngService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/service/IcEngService;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/service/IcEngService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/service/IcEngService$a;->a:Lcom/mega/engineeringmode/service/IcEngService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/service/IcEngService$a;->a:Lcom/mega/engineeringmode/service/IcEngService;

    iget-object v0, p0, Lcom/mega/engineeringmode/service/IcEngService;->a:Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mega/engineeringmode/service/IcEngService;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    const-string v0, " hasUsb "

    const-string v3, "IcEngService"

    invoke-static {v0, v2, v3}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    const v0, 0x50000046    # 8.5900063E9f

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mega/engineeringmode/service/IcEngService;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mega/engineeringmode/service/IcEngService;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v4, v5, v2}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mkdirs: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v4, "storage"

    const-string v6, "mnt/media_rw"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "save log: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-eq p1, v4, :cond_5

    goto :goto_1

    :cond_5
    const-string p1, "exportLog  TYPE_ALL "

    invoke-static {v3, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/service/IcEngService;->c:Lcom/mega/logger/MegaLogManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v1

    :goto_1
    const-string p1, " exportLog  retVal "

    invoke-static {p1, v1, v3}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_6
    iget-object p0, p0, Lcom/mega/engineeringmode/service/IcEngService;->d:Lmega/car/MegaCarProperty;

    if-eqz v1, :cond_7

    const/4 p1, 0x2

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    :goto_2
    invoke-virtual {p0, v0, p1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/mega/engineeringmode/service/IcEngService;->d:Lmega/car/MegaCarProperty;

    invoke-virtual {p0, v0, v1}, Lmega/car/MegaCarProperty;->setIntProp(II)V

    :goto_3
    return-void
.end method
