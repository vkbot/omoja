.class public Lcom/mega/engineeringmode/function/radio/RadioTestActivity;
.super Lcom/mega/engineeringmode/function/BaseFunctionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/mega/engineeringmode/function/radio/a$b;


# instance fields
.field public i:Lcom/mega/engineeringmode/function/radio/a;

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/hardware/radio/RadioMetadata;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "metadata = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioTestActivity"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 8

    const-string v0, "RadioTestActivity"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "info = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", selector.value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    const-string v5, "\n"

    if-ne v1, v4, :cond_1

    iget-wide v6, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->l:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "DAB_TEST true"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DAB_TEST true\nSTRENGTH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DAB"

    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    iget-wide v6, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "FM_TEST true"

    invoke-static {v0, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FM_TEST true\nSTRENGTH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FM"

    invoke-virtual {p0, p1, v0}, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "info == null || selector == null"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "BandConfig = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RadioTestActivity"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final n(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "enable"

    goto :goto_0

    :cond_0
    const-string p1, "disable"

    :goto_0
    const-string v1, "config.audio.mute"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->i:Lcom/mega/engineeringmode/function/radio/a;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/a;->b:Landroid/hardware/radio/RadioTuner;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "msg = %s, append = %s, type = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createNewFile = "

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    const-string v5, "_"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createResultFile time = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v4, "_radio_result.txt"

    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "mResultFile:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delete = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_6

    :cond_0
    iget-object p2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_5

    :cond_1
    const/4 p2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p2, :cond_2

    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return-void

    :cond_5
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "msg = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0119

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const-string p1, "Radio TEST"

    invoke-virtual {p0, p1}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->i(Ljava/lang/String;)V

    new-instance p1, Lcom/mega/engineeringmode/function/radio/a;

    invoke-direct {p1, p0, p0}, Lcom/mega/engineeringmode/function/radio/a;-><init>(Landroid/content/Context;Lcom/mega/engineeringmode/function/radio/a$b;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->i:Lcom/mega/engineeringmode/function/radio/a;

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "RadioTestActivity"

    if-nez p1, :cond_0

    const-string p0, "intent == null"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "fm_test_fre"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mFmFrequency = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const-string v4, "Error: radioTuner is null"

    const-string v5, "RadioHelper"

    const/4 v8, 0x0

    if-lez v1, :cond_2

    const-string p1, "freq:"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->j:J

    long-to-int p1, v0

    const/4 v0, -0x1

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->i:Lcom/mega/engineeringmode/function/radio/a;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/radio/a;->b:Landroid/hardware/radio/RadioTuner;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/hardware/radio/RadioTuner;->tune(Landroid/hardware/radio/ProgramSelector;)V

    goto :goto_0

    :cond_1
    invoke-static {v5, v4}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v8}, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    const-string v1, "dab_test_fre"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->k:J

    const-string v1, "dab_test_sid"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->l:J

    const-string v1, "dab_test_eid"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->m:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mDabFreq = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->k:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mDabSid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->l:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , mDabEid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->m:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->k:J

    cmp-long p1, v1, v6

    if-lez p1, :cond_4

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->l:J

    cmp-long p1, v1, v6

    if-lez p1, :cond_4

    iget-wide v1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->m:J

    cmp-long p1, v1, v6

    if-lez p1, :cond_4

    const-string p1, "dab freq:"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v0, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->l:J

    const/4 v2, 0x5

    invoke-direct {p1, v2, v0, v1}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v6, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->m:J

    const/4 v1, 0x6

    invoke-direct {v0, v1, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v6, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->k:J

    const/16 v3, 0x8

    invoke-direct {v1, v3, v6, v7}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/hardware/radio/ProgramSelector$Identifier;

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x0

    invoke-direct {v3, v2, p1, v6, v0}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    iget-object p1, p0, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->i:Lcom/mega/engineeringmode/function/radio/a;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/radio/a;->b:Landroid/hardware/radio/RadioTuner;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Landroid/hardware/radio/RadioTuner;->tune(Landroid/hardware/radio/ProgramSelector;)V

    goto :goto_2

    :cond_3
    invoke-static {v5, v4}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v8}, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/radio/RadioTestActivity;->n(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/mega/engineeringmode/function/BaseFunctionActivity;->onResume()V

    return-void
.end method
