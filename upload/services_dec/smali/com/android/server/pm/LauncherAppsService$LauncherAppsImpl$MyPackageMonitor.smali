.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p2, "x1"    # Lcom/android/server/pm/LauncherAppsService$1;

    .line 1209
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private onShortcutChangedInner(Ljava/lang/String;I)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1393
    move-object/from16 v1, p0

    const-string v2, "LauncherAppsService"

    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 1395
    .local v3, "n":I
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object v4, v0

    .line 1397
    .local v4, "user":Landroid/os/UserHandle;
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 1398
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    move-object v6, v0

    .line 1399
    .local v6, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    move-object v7, v0

    .line 1400
    .local v7, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v8, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v9, "onShortcutChanged"

    invoke-static {v0, v8, v4, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v9, p1

    goto :goto_2

    .line 1402
    :cond_0
    iget-object v0, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v15, v0

    .line 1405
    .local v15, "launcherUserId":I
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v10, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v0, v15, v8, v9, v10}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    move-object/from16 v9, p1

    goto :goto_2

    .line 1414
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 1415
    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v8

    iget-object v10, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x41f

    iget v13, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    iget v9, v7, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    move/from16 v20, v9

    move v9, v15

    move/from16 v19, v13

    move-object/from16 v13, p1

    move/from16 v21, v15

    .end local v15    # "launcherUserId":I
    .local v21, "launcherUserId":I
    move-object v15, v0

    move/from16 v18, p2

    invoke-virtual/range {v8 .. v20}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    .line 1423
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :try_start_1
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v9, p1

    :try_start_2
    invoke-interface {v6, v4, v9, v0}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1427
    goto :goto_2

    .line 1429
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "i":I
    .end local v6    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v7    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v21    # "launcherUserId":I
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1425
    .restart local v4    # "user":Landroid/os/UserHandle;
    .restart local v5    # "i":I
    .restart local v6    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .restart local v7    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v21    # "launcherUserId":I
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v9, p1

    .line 1426
    .local v0, "re":Landroid/os/RemoteException;
    :goto_1
    :try_start_3
    const-string v10, "Callback failed "

    invoke-static {v2, v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1397
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v6    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v7    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v21    # "launcherUserId":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v9, p1

    .line 1433
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v5    # "i":I
    nop

    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1434
    goto :goto_5

    .line 1433
    :catchall_0
    move-exception v0

    move-object/from16 v9, p1

    goto :goto_6

    .line 1429
    :catch_3
    move-exception v0

    move-object/from16 v9, p1

    .line 1431
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1433
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 1435
    :goto_5
    return-void

    .line 1433
    :catchall_1
    move-exception v0

    :goto_6
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1434
    throw v0
.end method


# virtual methods
.method public synthetic lambda$onShortcutChanged$0$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1388
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onShortcutChangedInner(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1215
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1216
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1218
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1219
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1220
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1221
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageAdded"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1223
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    goto :goto_1

    .line 1224
    :catch_0
    move-exception v5

    .line 1225
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1218
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1229
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1230
    throw v2

    .line 1229
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1230
    nop

    .line 1232
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 1233
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1259
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1260
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1262
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1263
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1264
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1265
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageModified"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1267
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    goto :goto_1

    .line 1268
    :catch_0
    move-exception v5

    .line 1269
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1262
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1274
    throw v2

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1274
    nop

    .line 1276
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1237
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1238
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1240
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1241
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1242
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1243
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackageRemoved"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1245
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    goto :goto_1

    .line 1246
    :catch_0
    move-exception v5

    .line 1247
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1252
    throw v2

    .line 1251
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1252
    nop

    .line 1254
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 1255
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1281
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1282
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1284
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1285
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1286
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1287
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesAvailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1289
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    goto :goto_1

    .line 1290
    :catch_0
    move-exception v5

    .line 1291
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1284
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1296
    throw v2

    .line 1295
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1296
    nop

    .line 1298
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 1299
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 14
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1325
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1326
    .local v0, "user":Landroid/os/UserHandle;
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1327
    .local v1, "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v2, "packagesWithExtras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v3, "packagesWithoutExtras":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, p1, v6

    .line 1330
    .local v7, "pkg":Ljava/lang/String;
    nop

    .line 1331
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1330
    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v8

    .line 1332
    .local v8, "launcherExtras":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 1333
    new-instance v9, Landroid/util/Pair;

    invoke-direct {v9, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1335
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "launcherExtras":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1338
    :cond_1
    nop

    .line 1339
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 1338
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1340
    .local v4, "packagesNullExtras":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v6

    .line 1342
    .local v6, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 1343
    :try_start_0
    iget-object v8, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/content/pm/IOnAppsChangedListener;

    .line 1344
    .local v8, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1345
    .local v9, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v10, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v11, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v12, "onPackagesSuspended"

    invoke-static {v10, v11, v0, v12}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    goto :goto_4

    .line 1347
    :cond_2
    const/4 v10, 0x0

    :try_start_1
    invoke-interface {v8, v0, v4, v10}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1348
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 1349
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    .line 1350
    .local v11, "packageExtraPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    aput-object v13, v12, v5

    iget-object v13, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    invoke-interface {v8, v0, v12, v13}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    .end local v11    # "packageExtraPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1356
    .end local v10    # "idx":I
    :cond_3
    goto :goto_4

    .line 1354
    :catch_0
    move-exception v10

    .line 1355
    .local v10, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v11, "LauncherAppsService"

    const-string v12, "Callback failed "

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1342
    .end local v8    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v9    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1359
    .end local v7    # "i":I
    :catchall_0
    move-exception v5

    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1360
    throw v5

    .line 1359
    :cond_4
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1360
    nop

    .line 1361
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1303
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1304
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1306
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1307
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1308
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1309
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnavailable"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1311
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v5

    invoke-interface {v3, v0, p1, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    goto :goto_1

    .line 1312
    :catch_0
    move-exception v5

    .line 1313
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1306
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1318
    throw v2

    .line 1317
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1318
    nop

    .line 1320
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 8
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1365
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1366
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v1

    .line 1368
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1369
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1370
    .local v3, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1371
    .local v4, "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v6, v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v7, "onPackagesUnsuspended"

    invoke-static {v5, v6, v0, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    .line 1373
    :cond_0
    :try_start_1
    invoke-interface {v3, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    goto :goto_1

    .line 1374
    :catch_0
    move-exception v5

    .line 1375
    .local v5, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1368
    .end local v3    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v4    # "cookie":Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    .end local v5    # "re":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1379
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1380
    throw v2

    .line 1379
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 1380
    nop

    .line 1382
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 1383
    return-void
.end method

.method public onShortcutChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1388
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$eTair5Mvr14v4M0nq9aQEW2cp-Y;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 1389
    return-void
.end method
