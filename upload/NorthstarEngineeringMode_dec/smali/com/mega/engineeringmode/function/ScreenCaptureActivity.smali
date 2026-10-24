.class public Lcom/mega/engineeringmode/function/ScreenCaptureActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public i:Ljava/lang/String;

.field public final j:Landroid/os/Handler;

.field public k:Lcom/mega/engineeringmode/ui/MegaSwitch;

.field public l:Lvendor/mega/message_center/V1_0/IMessageCenter;

.field public m:Z

.field public final n:Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;

.field public o:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;-><init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V

    iput-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->n:Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;

    return-void
.end method

.method public static n(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o()V

    const-string v0, "ScreenCaptureActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " cpIcmCapture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->i:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->i:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCpIcmCaptureRunnable  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->i:Ljava/lang/String;

    const-string v1, "oldFile "

    const-string v2, "copyFile newPathName  "

    const-string v3, "oldFile "

    monitor-enter p1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p1, Ln2/l;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v2, 0x7f1201c7

    invoke-static {v1, v2, v4}, Lk2/d;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_15

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p1

    goto/16 :goto_10

    :catchall_1
    move-exception p0

    goto/16 :goto_11

    :catch_1
    move-exception v1

    goto/16 :goto_c

    :cond_3
    :try_start_3
    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Ln2/l;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "EmmcLog/Pictures/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ScreenCaptureUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_3
    const-string v2, "ScreenCaptureUtil"

    const-string v3, "create dir failed"

    invoke-static {v2, v3}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    iget-object v2, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    monitor-exit p1

    goto/16 :goto_10

    :cond_9
    :goto_7
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_8
    iget-object v2, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v5, v2, :cond_a

    iget-object v5, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v5, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_8

    :cond_a
    sget-object v1, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v1, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_a

    :cond_b
    :goto_9
    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :goto_a
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    monitor-exit p1

    const/4 v4, 0x1

    goto :goto_10

    :goto_c
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ScreenCaptureUtil"

    const-string v2, "copyFile err"

    invoke-static {v1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v1, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_d

    :catch_4
    move-exception v1

    goto :goto_e

    :cond_e
    :goto_d
    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_f

    :goto_e
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_10
    monitor-exit p1

    :goto_10
    const-string p1, "ScreenCaptureActivity"

    const-string v0, " cpIcmCapture result "

    invoke-static {v0, v4, p1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->j:Landroid/os/Handler;

    new-instance v0, Lg1/q;

    invoke-direct {v0, p0, v4}, Lg1/q;-><init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;Z)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_11
    :try_start_c
    iget-object v1, p1, Ln2/l;->e:Ljava/io/FileInputStream;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_12

    :catch_5
    move-exception v1

    goto :goto_13

    :cond_11
    :goto_12
    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p1, Ln2/l;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_14

    :goto_13
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "ScreenCaptureUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_13
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_15
    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public final o()V
    .locals 1

    new-instance v0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$b;

    invoke-direct {v0, p0}, Lcom/mega/engineeringmode/function/ScreenCaptureActivity$b;-><init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->j:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00fa

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->j()V

    const p1, 0x7f0a00d1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lg1/o;

    invoke-direct {v0, p0}, Lg1/o;-><init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0392

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mega/engineeringmode/ui/MegaSwitch;

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object p1

    iget-boolean p1, p1, Ln2/l;->a:Z

    const-string/jumbo v0, "screenCaptureVis  "

    const-string v1, "ScreenCaptureActivity"

    invoke-static {v0, p1, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v0, p1}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object p1

    iget-object p1, p1, Ln2/l;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/m;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lg1/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->k:Lcom/mega/engineeringmode/ui/MegaSwitch;

    new-instance v0, Lg1/n;

    invoke-direct {v0, p0}, Lg1/n;-><init>(Lcom/mega/engineeringmode/function/ScreenCaptureActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->h()V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f1201da

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :try_start_0
    invoke-static {}, Lvendor/mega/message_center/V1_0/IMessageCenter;->getService()Lvendor/mega/message_center/V1_0/IMessageCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->l:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz p1, :cond_0

    const-string v0, "SystemSetting/ScreenShot/resp"

    iget-object v3, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->n:Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;

    invoke-interface {p1, v0, v3}, Lvendor/mega/message_center/V1_0/IMessageCenter;->registerRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "get message center service error"

    invoke-static {v1, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo p1, "onCreate"

    invoke-static {v1, p1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Li2/a;->b(Landroid/content/Context;)Li2/a;

    move-result-object p1

    iget-object p1, p1, Li2/a;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lg1/l;

    invoke-direct {v0, v2, p0}, Lg1/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onDestroy()V

    const-string v0, "ScreenCaptureActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->l:Lvendor/mega/message_center/V1_0/IMessageCenter;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "SystemSetting/ScreenShot/resp"

    iget-object v2, p0, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->n:Lcom/mega/engineeringmode/function/ScreenCaptureActivity$a;

    invoke-interface {v0, v1, v2}, Lvendor/mega/message_center/V1_0/IMessageCenter;->unregisterRxCallback(Ljava/lang/String;Lvendor/mega/message_center/V1_0/IMsgRxCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-static {}, Ln2/l;->a()Ln2/l;

    move-result-object v0

    iget-object v0, v0, Ln2/l;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/ScreenCaptureActivity;->o()V

    return-void
.end method
