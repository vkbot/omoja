.class public final Lcom/mega/engineeringmode/function/LogExportActivity$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/LogExportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/LogExportActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/LogExportActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity$b;->a:Lcom/mega/engineeringmode/function/LogExportActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "LogExportActivity"

    iget-object p0, p0, Lcom/mega/engineeringmode/function/LogExportActivity$b;->a:Lcom/mega/engineeringmode/function/LogExportActivity;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_9

    iget p1, p1, Landroid/os/Message;->what:I

    check-cast v0, Ljava/lang/String;

    sget v9, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "saveLogToPath  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v9, v10, v0}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mkdirs: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mkdirSuc "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v9, "storage"

    const-string v11, "mnt/media_rw"

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "save log: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    :goto_0
    move v4, v8

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v8}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v4

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v4

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/mega/logger/MegaLogManager;->saveLogToPath(Ljava/lang/String;I)Z

    move-result v4

    :goto_1
    const-string/jumbo p1, "saveLogToPath retVal "

    invoke-static {p1, v4, v6}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v4, :cond_1

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12036a

    invoke-static {p0, p1, v8}, Lk2/d;->a(Landroid/content/Context;II)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ls0/b;

    invoke-direct {p1, v5, p0}, Ls0/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120369

    invoke-static {p0, p1, v8}, Lk2/d;->a(Landroid/content/Context;II)V

    goto :goto_3

    :cond_2
    if-ne v0, v7, :cond_9

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v7, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    sget p1, Lcom/mega/engineeringmode/function/LogExportActivity;->r:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v4

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    invoke-virtual {p1, v4}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    invoke-virtual {p1, v3}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    invoke-virtual {p1, v5}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    invoke-virtual {p1, v8}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result p1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/mega/engineeringmode/function/LogExportActivity;->l:Lcom/mega/logger/MegaLogManager;

    invoke-virtual {p1, v7}, Lcom/mega/logger/MegaLogManager;->clearLog(I)Z

    move-result p1

    :goto_2
    const-string v0, " clearLog "

    invoke-static {v0, p1, v6}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120368

    invoke-static {p0, p1, v4}, Lk2/d;->a(Landroid/content/Context;II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f120367

    invoke-static {p0, p1, v4}, Lk2/d;->a(Landroid/content/Context;II)V

    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
