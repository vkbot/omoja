.class Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildStatusIntentReceiver"
.end annotation


# instance fields
.field private final mChildSessionsRemaining:Landroid/util/SparseIntArray;

.field private final mLocalSender:Landroid/content/IIntentSender$Stub;

.field private final mStatusReceiver:Landroid/content/IntentSender;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V
    .locals 0
    .param p2, "remainingSessions"    # Landroid/util/SparseIntArray;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1270
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1261
    new-instance p1, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver$1;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    .line 1271
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    .line 1272
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    .line 1273
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "x1"    # Landroid/util/SparseIntArray;
    .param p3, "x2"    # Landroid/content/IntentSender;
    .param p4, "x3"    # Lcom/android/server/pm/PackageInstallerSession$1;

    .line 1258
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/util/SparseIntArray;Landroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public getIntentSender()Landroid/content/IntentSender;
    .locals 2

    .line 1276
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mLocalSender:Landroid/content/IIntentSender$Stub;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public synthetic lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1281
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$900(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    .line 1288
    .local v1, "destroyed":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    if-eqz v1, :cond_1

    .line 1291
    return-void

    .line 1293
    :cond_1
    const-string v0, "android.content.pm.extra.SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1295
    .local v0, "sessionId":I
    const/4 v3, 0x1

    const-string v4, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1297
    .local v3, "status":I
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    .line 1298
    .local v4, "sessionIndex":I
    if-nez v3, :cond_2

    .line 1299
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1300
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1302
    :try_start_1
    const-string v5, "android.content.pm.extra.SESSION_ID"

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    .line 1305
    .local v5, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v5, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1306
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1308
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 1306
    move-object v9, p1

    invoke-virtual/range {v6 .. v13}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "options":Landroid/app/BroadcastOptions;
    goto :goto_0

    .line 1309
    :catch_0
    move-exception v2

    .line 1310
    :goto_0
    goto :goto_2

    .line 1312
    :cond_2
    const/4 v5, -0x1

    if-ne v5, v3, :cond_3

    .line 1314
    :try_start_2
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    .line 1315
    .restart local v5    # "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v5, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1316
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1318
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 1316
    move-object v9, p1

    invoke-virtual/range {v6 .. v13}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "options":Landroid/app/BroadcastOptions;
    goto :goto_1

    .line 1319
    :catch_1
    move-exception v2

    .line 1320
    :goto_1
    goto :goto_2

    .line 1322
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v5, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v6, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mChildSessionsRemaining:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1326
    :try_start_3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    .line 1327
    .restart local v5    # "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v5, v2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1328
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->mStatusReceiver:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->access$200(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1330
    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 1328
    move-object v9, p1

    invoke-virtual/range {v6 .. v13}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1332
    .end local v5    # "options":Landroid/app/BroadcastOptions;
    goto :goto_2

    .line 1331
    :catch_2
    move-exception v2

    .line 1334
    :cond_4
    :goto_2
    return-void

    .line 1288
    .end local v0    # "sessionId":I
    .end local v1    # "destroyed":Z
    .end local v3    # "status":I
    .end local v4    # "sessionIndex":I
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public statusUpdate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1280
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$800(Lcom/android/server/pm/PackageInstallerSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc;-><init>(Lcom/android/server/pm/PackageInstallerSession$ChildStatusIntentReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    return-void
.end method
