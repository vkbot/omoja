.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 891
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendDeviceOwnerUserCommand(Ljava/lang/String;I)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1027
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1029
    .local v1, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 1030
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    .line 1031
    .local v8, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1032
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z

    .line 1035
    .end local v1    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_0
    monitor-exit v0

    .line 1036
    return-void

    .line 1035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 894
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "action":Ljava/lang/String;
    nop

    .line 896
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->getSendingUserId()I

    move-result v1

    .line 895
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 903
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 904
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 906
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 907
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 909
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 911
    :cond_1
    :goto_0
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 912
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 913
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 914
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 915
    .local v2, "filterConsent":Landroid/content/IntentFilter;
    const-string v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 918
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const v5, 0x28700e57

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x3

    .line 920
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/RemoteBugreportUtils;->buildNotification(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 918
    const-string v8, "DevicePolicyManager"

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 924
    .end local v2    # "filterConsent":Landroid/content/IntentFilter;
    :cond_2
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 925
    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 930
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 938
    :cond_4
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 939
    const-string v2, "android.app.action.USER_ADDED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 940
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 943
    :try_start_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 944
    monitor-exit v2

    goto/16 :goto_3

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 945
    :cond_5
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 946
    const-string v2, "android.app.action.USER_REMOVED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 947
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 949
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v3

    .line 950
    .local v3, "isRemovedUserAffiliated":Z
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 951
    if-nez v3, :cond_6

    .line 954
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 956
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 958
    .end local v3    # "isRemovedUserAffiliated":Z
    :cond_6
    monitor-exit v2

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 959
    :cond_7
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    .line 960
    const-string v2, "android.app.action.USER_STARTED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 961
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 962
    :try_start_3
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 964
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 965
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 966
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 967
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    goto/16 :goto_3

    .line 965
    :catchall_3
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v3

    .line 968
    :cond_8
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_9

    .line 969
    const-string v2, "android.app.action.USER_STOPPED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 970
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 971
    const-string v2, "DevicePolicyManager"

    const-string v3, "Managed profile was stopped"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)I

    goto/16 :goto_3

    .line 974
    :cond_9
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 975
    const-string v2, "android.app.action.USER_SWITCHED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 976
    :cond_a
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 977
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 978
    :try_start_5
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 979
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 980
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 981
    const-string v2, "DevicePolicyManager"

    const-string v4, "Managed profile became unlocked"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 984
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    goto/16 :goto_3

    .line 979
    :catchall_4
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v3

    .line 987
    :cond_b
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 988
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 989
    :cond_c
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 990
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 991
    :cond_d
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 992
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 993
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 995
    :cond_e
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 997
    :cond_f
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 998
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 999
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1000
    :cond_10
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1001
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto/16 :goto_3

    .line 1002
    :cond_11
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1003
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_2

    .line 1012
    :cond_12
    const-string v2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1013
    const-string v2, "DevicePolicyManager"

    const-string v3, "Profile off deadline alarm was triggered"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result v2

    .line 1015
    .local v2, "userId":I
    if-ltz v2, :cond_13

    .line 1016
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)I

    goto :goto_1

    .line 1018
    :cond_13
    const-string v3, "DevicePolicyManager"

    const-string v4, "Got deadline alarm for nonexistent profile"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1020
    .end local v2    # "userId":I
    :cond_14
    const-string v2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting to turn on the profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    goto :goto_3

    .line 1020
    :cond_15
    :goto_1
    goto :goto_3

    .line 1007
    :cond_16
    :goto_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 1008
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result v2

    .line 1009
    .restart local v2    # "userId":I
    if-ltz v2, :cond_17

    .line 1010
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;IZ)I

    .line 1012
    .end local v2    # "userId":I
    :cond_17
    nop

    .line 1024
    :cond_18
    :goto_3
    return-void
.end method
