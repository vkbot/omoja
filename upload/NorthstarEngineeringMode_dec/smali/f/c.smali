.class public final synthetic Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf/c;->c:I

    iput-object p2, p0, Lf/c;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lf/c;->c:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, v0, Lf/c;->r:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :pswitch_0
    check-cast v0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;

    sget v1, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "AppVersionActivity"

    if-ge v5, v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "----"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  versioncoede "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "loadApps end"

    invoke-static {v4, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/mega/engineeringmode/function/versioninfo/AppVersionActivity;->j:Lcom/mega/engineeringmode/function/versioninfo/AppVersionAdapter;

    if-eqz v3, :cond_1

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lq0/b;

    invoke-direct {v4, v2, v0, v1}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_1
    check-cast v0, Lcom/mega/engineeringmode/function/tbox/b;

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/tbox/b;->b()V

    return-void

    :pswitch_2
    check-cast v0, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;

    sget v1, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->q:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Lcom/mega/engineeringmode/function/presskey/KeyInputActivity;->n(IZ)V

    return-void

    :pswitch_3
    check-cast v0, Lo1/d;

    const-string v1, "ExcelReader"

    iget-object v6, v0, Lo1/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    sget-object v10, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v11, 0x7f120249

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".xls"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v10, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v3, v10

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v12, ".xlsx"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v10, v11}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    const-string/jumbo v0, "workbook == null"

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lo1/d;->e(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-static {v3}, Lo1/d;->e(Ljava/io/Closeable;)V

    goto/16 :goto_8

    :cond_4
    :try_start_1
    const-string v10, "DTC"

    invoke-interface {v3, v10}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v0, "dtc sheet not found!"

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lo1/d;->e(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v10}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v5

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v13, v0, Lo1/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v14, 0x2

    if-eqz v12, :cond_9

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v12}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v15

    const/4 v5, 0x6

    if-ge v15, v5, :cond_6

    :goto_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    invoke-interface {v12, v14}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v15

    invoke-static {v15}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x3

    invoke-interface {v12, v14}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v14

    invoke-static {v14}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v2}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v5}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v5

    invoke-static {v5}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".0"

    const-string v12, ""

    invoke-virtual {v2, v4, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    if-le v11, v2, :cond_8

    const-string/jumbo v2, "scan2 end!"

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :cond_8
    const/4 v2, 0x4

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    move v2, v14

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo1/d;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lo1/d;->d()V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "task2,spend = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nmDtcDescMap:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :goto_7
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :goto_8
    return-void

    :goto_9
    invoke-static {v3}, Lo1/d;->e(Ljava/io/Closeable;)V

    throw v0

    :pswitch_4
    check-cast v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;->i:Lk1/d;

    if-nez v0, :cond_b

    const-string v0, "CommunicationActivity"

    const-string v1, "mCommunicationPresenter == null"

    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string/jumbo v1, "send message error"

    iget-object v2, v0, Lk1/d;->a:Lk1/e;

    iget-object v0, v0, Lk1/d;->b:Lvendor/mega/message_center/V1_0/IMessageCenter;

    const-string v3, "CommunicationPresenter"

    if-nez v0, :cond_c

    const-string v4, "message center is null"

    invoke-static {v3, v4}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_4
    const-string v5, "car_engineering_mode/communication"

    invoke-interface {v0, v5, v4}, Lvendor/mega/message_center/V1_0/IMessageCenter;->sendMsg(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "send message success"

    invoke-static {v3, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    move-object v0, v2

    check-cast v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lk1/b;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lk1/b;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_d
    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    move-object v0, v2

    check-cast v0, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lk1/b;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lk1/b;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v3, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e

    check-cast v2, Lcom/mega/engineeringmode/function/communication/CommunicationActivity;

    invoke-static {}, Ld/f;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lk1/b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lk1/b;-><init>(Lcom/mega/engineeringmode/function/communication/CommunicationActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    :goto_b
    return-void

    :pswitch_5
    move-object v1, v0

    check-cast v1, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;

    iget-object v0, v1, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    if-eqz v0, :cond_12

    const-string/jumbo v2, "stop preview"

    const-string v4, "Camera2Manager"

    invoke-static {v4, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Li1/a;->h:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Li1/a;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_f

    goto :goto_c

    :cond_f
    const/4 v5, 0x0

    iput-boolean v5, v0, Li1/a;->h:Z

    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :cond_10
    :goto_c
    const-string/jumbo v0, "preview has already stopped"

    invoke-static {v4, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    iget-object v0, v1, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->j:Li1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "releaseCamera"

    invoke-static {v4, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Li1/a;->c:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v3, v0, Li1/a;->c:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_11
    iget-object v2, v0, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v3, v0, Li1/a;->b:Landroid/hardware/camera2/CameraDevice;

    :cond_12
    iget-object v0, v1, Lcom/mega/engineeringmode/function/camera/CameraPreviewActivity;->l:Landroid/view/TextureView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const-string v0, "CameraPreviewActivity"

    const-string/jumbo v1, "surfaceTexture.release()"

    invoke-static {v0, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    :pswitch_6
    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Le1/c;->l:I

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void

    :pswitch_7
    check-cast v0, Ld1/a;

    const-string/jumbo v1, "this$0"

    invoke-static {v0, v1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Ld1/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "sacrifice"

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Ld1/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_15

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_f

    :cond_15
    move-object v1, v3

    :goto_f
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    check-cast v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ly0/a;->a()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v0, Lcom/mega/carsettings/wifi/tether/TetherSwitchBarController;->e:Landroid/net/ConnectivityManager;

    invoke-static {v0, v1}, Lq2/b;->a(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    return-void

    :pswitch_9
    check-cast v0, Lcom/mega/carsettings/wifi/WifiSwitchController;

    iget-object v1, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    instance-of v2, v1, Landroidx/preference/TwoStatePreference;

    if-eqz v2, :cond_17

    check-cast v1, Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_17
    iget-object v0, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->b:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :pswitch_a
    check-cast v0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;

    sget v1, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->k:I

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->r()V

    return-void

    :pswitch_b
    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->notifyChanged()V

    return-void

    :pswitch_c
    check-cast v0, Ls0/c;

    invoke-static {v0}, Ls0/c;->d(Ls0/c;)V

    return-void

    :pswitch_d
    check-cast v0, Lf/d;

    iget-object v0, v0, Lf/d;->n1:Lf/d$a;

    if-eqz v0, :cond_18

    check-cast v0, Lcom/mega/carsettings/wifi/AccessPointPreference;

    invoke-virtual {v0}, Lcom/mega/carsettings/wifi/AccessPointPreference;->e()V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
