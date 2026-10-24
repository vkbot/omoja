.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1678
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1679
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1680
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .line 1691
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1a

    const/4 v7, 0x5

    const-wide/32 v8, 0x40000

    if-eq v0, v7, :cond_19

    const/16 v7, 0x9

    if-eq v0, v7, :cond_10

    const/16 v7, 0xe

    const/16 v10, -0x16

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    .line 1884
    :pswitch_0
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1885
    .local v0, "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1887
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isIntegrityVerificationComplete()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1888
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v4

    .line 1889
    .local v4, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 1890
    .local v5, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v7, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1892
    .local v7, "originUri":Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Integrity verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1895
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)I

    move-result v11

    .line 1894
    invoke-virtual {v3, v11}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 1897
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)I

    move-result v11

    if-ne v11, v6, :cond_0

    .line 1899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity check times out, continuing with "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "PackageManager"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1901
    :cond_0
    invoke-virtual {v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1905
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1906
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1909
    :cond_1
    const-string v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1914
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleIntegrityVerificationFinished()V

    .line 1915
    .end local v4    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v5    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v7    # "originUri":Landroid/net/Uri;
    goto/16 :goto_f

    .line 1959
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1961
    .restart local v0    # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1962
    .restart local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_2

    .line 1963
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integrity verification with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found. It may be invalid or overridden by verifier"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    goto/16 :goto_f

    .line 1968
    :cond_2
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1970
    .local v4, "response":I
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1971
    .local v5, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 1972
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1974
    .local v11, "originUri":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setIntegrityVerificationResult(I)V

    .line 1976
    if-ne v4, v6, :cond_3

    .line 1977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Integrity check passed for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "PackageManager"

    invoke-static {v10, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1979
    :cond_3
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1983
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1984
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1987
    :cond_4
    const-string v6, "integrity_verification"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1992
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleIntegrityVerificationFinished()V

    .line 1993
    goto/16 :goto_f

    .line 1806
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v4    # "response":I
    .end local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11    # "originUri":Landroid/net/Uri;
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1807
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1808
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1810
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_5
    goto/16 :goto_f

    .line 1798
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1799
    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1800
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-eqz v0, :cond_6

    .line 1801
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 1803
    .end local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_6
    monitor-exit v3

    .line 1804
    goto/16 :goto_f

    .line 1803
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2078
    :pswitch_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2079
    .local v0, "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 2080
    .local v3, "sessionId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 2081
    .local v4, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-eqz v4, :cond_20

    .line 2082
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 2083
    .local v5, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 2085
    .local v6, "originUri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enable rollback timed out for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const-string v7, "enable_rollback"

    invoke-static {v8, v9, v7, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2091
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 2092
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v7, "rollbackTimeoutIntent":Landroid/content/Intent;
    const-string v8, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2097
    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2099
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v10, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2101
    .end local v5    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v6    # "originUri":Landroid/net/Uri;
    .end local v7    # "rollbackTimeoutIntent":Landroid/content/Intent;
    goto/16 :goto_f

    .line 2053
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "sessionId":I
    .end local v4    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2054
    .restart local v0    # "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 2055
    .local v3, "enableRollbackCode":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 2056
    .restart local v4    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-nez v4, :cond_7

    .line 2057
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid rollback enabled token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    goto/16 :goto_f

    .line 2062
    :cond_7
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 2064
    if-eq v3, v6, :cond_8

    .line 2065
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 2066
    .restart local v5    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 2067
    .restart local v6    # "originUri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    .end local v5    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v6    # "originUri":Landroid/net/Uri;
    :cond_8
    const-string v5, "enable_rollback"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2074
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 2075
    goto/16 :goto_f

    .line 2045
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "enableRollbackCode":I
    .end local v4    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    .line 2050
    goto/16 :goto_f

    .line 1833
    :pswitch_7
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1834
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1835
    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1836
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1837
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1838
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1839
    goto/16 :goto_f

    .line 1837
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2002
    :pswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2004
    .local v0, "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 2006
    .local v3, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v3, :cond_9

    .line 2007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IntentFilter verification token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    goto/16 :goto_f

    .line 2012
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v4

    .line 2018
    .local v4, "userId":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 2021
    .local v5, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    iget v6, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v7, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 2029
    iget v6, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    .line 2034
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2035
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_f

    .line 1996
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4    # "userId":I
    .end local v5    # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1997
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->packageName:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->hasDomainUrls:Z

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->activities:Ljava/util/List;

    invoke-static/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;IIZLjava/lang/String;ZLjava/util/List;)V

    .line 1999
    goto/16 :goto_f

    .line 1841
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_a
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1842
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 1844
    .local v4, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1845
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1846
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1847
    .local v5, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 1848
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    .line 1850
    .local v15, "originUri":Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    .line 1853
    .local v14, "user":Landroid/os/UserHandle;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v11

    if-ne v11, v6, :cond_a

    .line 1855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Continuing with installation of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PackageManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1858
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v13, 0x1

    const/4 v3, 0x0

    iget v6, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move v11, v0

    move-object v12, v15

    move-object/from16 v18, v14

    .end local v14    # "user":Landroid/os/UserHandle;
    .local v18, "user":Landroid/os/UserHandle;
    move-object v14, v3

    move-object/from16 v19, v15

    .end local v15    # "originUri":Landroid/net/Uri;
    .local v19, "originUri":Landroid/net/Uri;
    move v15, v6

    move-object/from16 v16, v18

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2

    .line 1862
    .end local v18    # "user":Landroid/os/UserHandle;
    .end local v19    # "originUri":Landroid/net/Uri;
    .restart local v14    # "user":Landroid/os/UserHandle;
    .restart local v15    # "originUri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    .end local v14    # "user":Landroid/os/UserHandle;
    .end local v15    # "originUri":Landroid/net/Uri;
    .restart local v18    # "user":Landroid/os/UserHandle;
    .restart local v19    # "originUri":Landroid/net/Uri;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v14, -0x1

    const/4 v15, 0x0

    iget v6, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move v12, v0

    move-object/from16 v13, v19

    move/from16 v16, v6

    move-object/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    .line 1865
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1871
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1872
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1875
    :cond_b
    const-string/jumbo v3, "verification"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1878
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1880
    .end local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v18    # "user":Landroid/os/UserHandle;
    .end local v19    # "originUri":Landroid/net/Uri;
    goto/16 :goto_f

    .line 1919
    .end local v0    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_b
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1921
    .restart local v0    # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1922
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_c

    .line 1923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verification with id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found. It may be invalid or overridden by integrity verification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    goto/16 :goto_f

    .line 1929
    :cond_c
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1931
    .local v4, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v5, v4, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v6, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1933
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1934
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1935
    .restart local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    .line 1936
    .local v6, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 1938
    .local v7, "originUri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1939
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v13, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const/4 v14, 0x0

    iget v15, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    .line 1940
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    .line 1939
    move v11, v0

    move-object v12, v7

    invoke-static/range {v10 .. v16}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_3

    .line 1942
    :cond_d
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1946
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1947
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1950
    :cond_e
    const-string/jumbo v10, "verification"

    invoke-static {v8, v9, v10, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1953
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1954
    .end local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v6    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v7    # "originUri":Landroid/net/Uri;
    goto/16 :goto_f

    .line 1822
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v4    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_c
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1823
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1824
    :try_start_3
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1825
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1826
    .local v5, "userId":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1827
    .end local v5    # "userId":I
    goto :goto_4

    .line 1828
    :cond_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1829
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1830
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1831
    goto/16 :goto_f

    .line 1829
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1812
    :pswitch_d
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1813
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1814
    const/16 v0, 0xd

    :try_start_5
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1815
    invoke-virtual {v1, v7}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1816
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1817
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1818
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1819
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1820
    goto/16 :goto_f

    .line 1818
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1751
    :cond_10
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1752
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_11

    move/from16 v18, v6

    goto :goto_5

    :cond_11
    move/from16 v18, v5

    .line 1753
    .local v18, "didRestore":Z
    :goto_5
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1755
    if-eqz v0, :cond_12

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v3, :cond_12

    .line 1756
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->freezer:Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 1759
    :cond_12
    if-eqz v0, :cond_13

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_13

    .line 1760
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_a

    .line 1761
    :cond_13
    if-eqz v0, :cond_18

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v3, :cond_18

    .line 1762
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1763
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1765
    .local v4, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_14

    move v12, v6

    goto :goto_6

    :cond_14
    move v12, v5

    .line 1767
    .local v12, "grantPermissions":Z
    :goto_6
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_15

    move v13, v6

    goto :goto_7

    :cond_15
    move v13, v5

    .line 1769
    .local v13, "killApp":Z
    :goto_7
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v7, v10

    if-eqz v7, :cond_16

    move v14, v6

    goto :goto_8

    :cond_16
    move v14, v5

    .line 1771
    .local v14, "virtualPreload":Z
    :goto_8
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1772
    .local v5, "grantedPermissions":[Ljava/lang/String;
    iget v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v7, 0x400000

    and-int/2addr v6, v7

    if-eqz v6, :cond_17

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_17

    .line 1775
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_9

    .line 1776
    :cond_17
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    move-object/from16 v16, v6

    :goto_9
    nop

    .line 1777
    .local v16, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->autoRevokePermissionsMode:I

    .line 1779
    .local v6, "autoRevokePermissionsMode":I
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installSource:Lcom/android/server/pm/InstallSource;

    iget-object v7, v7, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v11, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mDataLoaderType:I

    move/from16 v21, v11

    move-object v11, v4

    move-object/from16 v20, v15

    move-object v15, v5

    move/from16 v17, v6

    move-object/from16 v19, v7

    invoke-static/range {v10 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;IZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;I)V

    .line 1786
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v7, :cond_18

    .line 1787
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    invoke-static {v8, v9, v7, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1795
    .end local v3    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v4    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v5    # "grantedPermissions":[Ljava/lang/String;
    .end local v6    # "autoRevokePermissionsMode":I
    .end local v12    # "grantPermissions":Z
    .end local v13    # "killApp":Z
    .end local v14    # "virtualPreload":Z
    .end local v16    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    :goto_a
    iget v3, v2, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "postInstall"

    invoke-static {v8, v9, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1796
    .end local v0    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v18    # "didRestore":Z
    goto/16 :goto_f

    .line 1693
    :cond_19
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1694
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v0, :cond_20

    .line 1696
    nop

    .line 1697
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1696
    const-string/jumbo v4, "queueInstall"

    invoke-static {v8, v9, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1698
    const-string/jumbo v3, "startCopy"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1699
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    .line 1700
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_f

    .line 1707
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_1a
    const/4 v6, 0x0

    .line 1709
    .local v6, "size":I
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1710
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1711
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v6, v0

    .line 1712
    if-gtz v6, :cond_1b

    .line 1714
    monitor-exit v5

    return-void

    .line 1716
    :cond_1b
    new-array v0, v6, [Ljava/lang/String;

    .line 1717
    .local v0, "packages":[Ljava/lang/String;
    new-array v7, v6, [Ljava/util/ArrayList;

    .line 1718
    .local v7, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v8, v6, [I

    .line 1719
    .local v8, "uids":[I
    const/4 v9, 0x0

    .line 1721
    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_b
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v11

    if-ge v10, v11, :cond_1e

    .line 1722
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v11

    .line 1723
    .local v11, "packageUserId":I
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1724
    invoke-virtual {v12, v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 1725
    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1726
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    if-ge v9, v6, :cond_1d

    .line 1727
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1728
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v0, v9

    .line 1729
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v7, v9

    .line 1730
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 1731
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v14, :cond_1c

    .line 1732
    iget v15, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v11, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    goto :goto_d

    .line 1733
    :cond_1c
    move v15, v3

    :goto_d
    aput v15, v8, v9

    .line 1734
    nop

    .end local v13    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v9, v9, 0x1

    .line 1735
    goto :goto_c

    .line 1721
    .end local v11    # "packageUserId":I
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 1737
    .end local v10    # "n":I
    :cond_1e
    move v6, v9

    .line 1738
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1739
    .end local v9    # "i":I
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1741
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v6, :cond_1f

    .line 1742
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v0, v3

    const/4 v11, 0x1

    aget-object v12, v7, v3

    aget v13, v8, v3

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;)V

    .line 1741
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1745
    .end local v3    # "i":I
    :cond_1f
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1746
    nop

    .line 2105
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "uids":[I
    :cond_20
    :goto_f
    return-void

    .line 1739
    .restart local v6    # "size":I
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0xd
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

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1684
    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1687
    nop

    .line 1688
    return-void

    .line 1686
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1687
    throw v1
.end method
