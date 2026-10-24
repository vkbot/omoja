.class public final synthetic Ls0/b;
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

    iput p1, p0, Ls0/b;->c:I

    iput-object p2, p0, Ls0/b;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Ls0/b;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, v0, Ls0/b;->r:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lm5/y;

    iget-object v1, v0, Lm5/y;->c:Lm5/h;

    invoke-virtual {v1}, Lm5/h;->h0()V

    iput-object v2, v0, Lm5/y;->c:Lm5/h;

    return-void

    :pswitch_0
    check-cast v0, Lmega/widget/ToastUtil;

    invoke-static {v0}, Lmega/widget/ToastUtil;->b(Lmega/widget/ToastUtil;)V

    return-void

    :pswitch_1
    check-cast v0, Lmega/car/livedata/CarPropertyLiveData;

    invoke-static {v0}, Lmega/car/livedata/CarPropertyLiveData;->a(Lmega/car/livedata/CarPropertyLiveData;)V

    return-void

    :pswitch_2
    check-cast v0, Lmega/car/MegaCar;

    invoke-static {v0}, Lmega/car/MegaCar;->a(Lmega/car/MegaCar;)V

    return-void

    :pswitch_3
    check-cast v0, Lcom/mega/engineeringmode/ui/LoginFragment;

    iget-object v0, v0, Lcom/mega/engineeringmode/ui/LoginFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :pswitch_4
    check-cast v0, Lcom/mega/engineeringmode/function/wifi/WifTestEnabler;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->c:Lg1/g;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v3}, Lcom/mega/engineeringmode/function/wifi/AbsEnabler;->b(Z)V

    return-void

    :pswitch_5
    check-cast v0, Lcom/mega/engineeringmode/function/upgrade/a;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/a;->h:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/upgrade/a;->e:Lcom/mega/engineeringmode/function/upgrade/FileAdapter;

    iput-object v1, v0, Lcom/mega/engineeringmode/function/upgrade/FileAdapter;->a:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :pswitch_6
    check-cast v0, Lcom/mega/engineeringmode/function/tbox/b$h;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lcom/mega/engineeringmode/function/tbox/b$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mega/engineeringmode/function/tbox/b$e;

    invoke-interface {v0}, Lcom/mega/engineeringmode/function/tbox/b$e;->a()V

    :cond_0
    return-void

    :pswitch_7
    check-cast v0, Lcom/mega/engineeringmode/function/tbox/b;

    iget-object v1, v0, Lcom/mega/engineeringmode/function/tbox/b;->e:Landroidx/constraintlayout/core/state/c;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3, v1}, Ln2/g;->a(JLn2/g;)Lb/b;

    move-result-object v4

    check-cast v4, Lvendor/mega/tboxclient/V1_0/ITboxClientService;

    if-eqz v4, :cond_1

    new-instance v5, Ln2/a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "TBoxManager"

    iput-object v6, v5, Ln2/a;->a:Ljava/lang/String;

    iput-object v1, v5, Ln2/a;->b:Ln2/g;

    iput-object v4, v5, Ln2/a;->c:Lb/b;

    iput-object v0, v5, Ln2/a;->d:Ln2/f;

    iput-wide v2, v5, Ln2/a;->e:J

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-interface {v4, v5, v1, v2}, Lb/b;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lc2/b;

    iget-object v2, v0, Lcom/mega/engineeringmode/function/tbox/b;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v0, Lcom/mega/engineeringmode/function/tbox/b;->d:Lcom/mega/engineeringmode/function/tbox/b$c;

    invoke-direct {v1, v4, v2, v3}, Lc2/b;-><init>(Lvendor/mega/tboxclient/V1_0/ITboxClientService;Landroid/os/Looper;Lcom/mega/engineeringmode/function/tbox/b$c;)V

    iget-object v2, v0, Lcom/mega/engineeringmode/function/tbox/b;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/mega/engineeringmode/function/tbox/b;->b()V

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to linkToDeath hal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :pswitch_8
    check-cast v0, Lo1/d;

    const-string v1, "ExcelReader"

    iget-object v5, v0, Lo1/d;->c:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_1
    sget-object v9, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    const v10, 0x7f120248

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/mega/engineeringmode/EngineeringModeApplication;->b:Lcom/mega/engineeringmode/EngineeringModeApplication;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".xls"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v9, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v9, v10}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    :goto_1
    move-object v2, v9

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v11, ".xlsx"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-direct {v9, v10}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    const-string/jumbo v0, "workbook == null"

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lo1/d;->e(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v2}, Lo1/d;->e(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :cond_4
    :try_start_2
    const-string v9, "DTC"

    invoke-interface {v2, v9}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v0, "dtc sheet not found!"

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo1/d;->e(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v9}, Lorg/apache/poi/ss/usermodel/Sheet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v4

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v12, v0, Lo1/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v11, :cond_9

    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v11}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v13

    const/4 v14, 0x3

    if-ge v13, v14, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v11, v14}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v13

    invoke-static {v13}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-interface {v11, v14}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v14

    invoke-static {v14}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x5

    invoke-interface {v11, v15}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v15

    invoke-static {v15}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v4, 0x6

    invoke-interface {v11, v4}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v4

    invoke-static {v4}, Lo1/d;->a(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ln2/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, ".0"

    const-string v14, ""

    invoke-virtual {v3, v11, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    if-le v10, v3, :cond_8

    const-string/jumbo v3, "scan1 end!"

    invoke-static {v1, v3}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const/4 v3, 0x1

    const/4 v10, 0x0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_9
    :goto_5
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo1/d;->c()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lo1/d;->d()V

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spend = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nmDtcDescMap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :goto_6
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :goto_7
    return-void

    :goto_8
    invoke-static {v2}, Lo1/d;->e(Ljava/io/Closeable;)V

    throw v0

    :pswitch_9
    check-cast v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/display/DisplayActivity;->r:Ljava/io/File;

    if-nez v0, :cond_b

    const-string v0, "DisplayActivity"

    const-string v1, "mIpkPng == null can not transfer"

    invoke-static {v0, v1}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void

    :pswitch_a
    check-cast v0, Lcom/mega/engineeringmode/function/LogExportActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/LogExportActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f120369

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_b
    check-cast v0, Landroid/widget/ScrollView;

    sget v1, Le1/c;->l:I

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void

    :pswitch_c
    check-cast v0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;

    sget v1, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->k:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->v(Z)V

    return-void

    :pswitch_d
    check-cast v0, Ls0/c;

    invoke-static {v0}, Ls0/c;->d(Ls0/c;)V

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
