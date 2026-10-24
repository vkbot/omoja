.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 5001
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/UserManagerService$1;

    .line 5001
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 5044
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 5045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5046
    monitor-exit v0

    .line 5047
    return-void

    .line 5046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/UserManager$CheckedUserOperationException;
        }
    .end annotation

    .line 5161
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v4, -0x2710

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;->access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5247
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .line 5012
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5013
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1700(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5014
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileParentId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 5291
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$3100(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 5293
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 5294
    monitor-exit v0

    return p1

    .line 5296
    :cond_0
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 5297
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserIds()[I
    .locals 1

    .line 5193
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 5319
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$3300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5321
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5322
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :goto_0
    return-object v0

    .line 5321
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .locals 5

    .line 5326
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5327
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$3300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5328
    .local v1, "userSize":I
    new-array v2, v1, [Landroid/content/pm/UserInfo;

    .line 5329
    .local v2, "allInfos":[Landroid/content/pm/UserInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 5330
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->access$3300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    aput-object v4, v2, v3

    .line 5329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5332
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 5333
    .end local v1    # "userSize":I
    .end local v2    # "allInfos":[Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # Ljava/lang/String;

    .line 5039
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 1
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5198
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/pm/UserManagerService$LocalService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsers(ZZZ)Ljava/util/List;
    .locals 1
    .param p1, "excludePartial"    # Z
    .param p2, "excludeDying"    # Z
    .param p3, "excludePreCreated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 5204
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;ZZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5309
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5310
    return v1

    .line 5312
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->access$3200(Lcom/android/server/pm/UserManagerService;I)Landroid/os/Bundle;

    move-result-object v0

    .line 5313
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDeviceManaged()Z
    .locals 2

    .line 5065
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5066
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1900(Lcom/android/server/pm/UserManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isProfileAccessible(IILjava/lang/String;Z)Z
    .locals 7
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "debugMsg"    # Ljava/lang/String;
    .param p4, "throwSecurityException"    # Z

    .line 5253
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 5254
    return v0

    .line 5256
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5257
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 5258
    .local v2, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5259
    :cond_1
    if-nez p4, :cond_9

    .line 5266
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p2}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5267
    .local v3, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 5277
    :cond_3
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v6, -0x2710

    if-eq v5, v6, :cond_5

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v5, v6, :cond_4

    goto :goto_0

    .line 5285
    .end local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v1

    .line 5286
    return v0

    .line 5279
    .restart local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_5
    :goto_0
    if-nez p4, :cond_6

    .line 5283
    monitor-exit v1

    return v4

    .line 5280
    :cond_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for unrelated profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "callingUserId":I
    .end local p2    # "targetUserId":I
    .end local p3    # "debugMsg":Ljava/lang/String;
    .end local p4    # "throwSecurityException":Z
    throw v0

    .line 5270
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "callingUserId":I
    .restart local p2    # "targetUserId":I
    .restart local p3    # "debugMsg":Ljava/lang/String;
    .restart local p4    # "throwSecurityException":Z
    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    .line 5271
    const-string v0, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for disabled profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    :cond_8
    monitor-exit v1

    return v4

    .line 5260
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for another profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "callingUserId":I
    .end local p2    # "targetUserId":I
    .end local p3    # "debugMsg":Ljava/lang/String;
    .end local p4    # "throwSecurityException":Z
    throw v0

    .line 5285
    .end local v2    # "callingUserInfo":Landroid/content/pm/UserInfo;
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "callingUserId":I
    .restart local p2    # "targetUserId":I
    .restart local p3    # "debugMsg":Ljava/lang/String;
    .restart local p4    # "throwSecurityException":Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 5303
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isUserInitialized(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5242
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserManaged(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 5079
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5080
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5081
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserRunning(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 5172
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 5173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 5174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 5230
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 5231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v1

    .line 5232
    .local v1, "state":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5234
    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 5237
    :cond_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5235
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    return v0

    .line 5232
    .end local v1    # "state":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 5211
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 5212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(II)I

    move-result v1

    .line 5213
    .local v1, "state":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5215
    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 5218
    :cond_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 5216
    :cond_3
    :goto_2
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    return v0

    .line 5213
    .end local v1    # "state":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onEphemeralUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 5143
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 5145
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5148
    iget v2, v1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 5149
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5151
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 5154
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    monitor-exit v0

    .line 5155
    return-void

    .line 5154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllUsers()V
    .locals 5

    .line 5112
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 5114
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2400(Lcom/android/server/pm/UserManagerService;)V

    goto :goto_0

    .line 5117
    :cond_0
    new-instance v0, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 5129
    .local v0, "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5130
    .local v1, "userSwitchedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5131
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5132
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    .line 5131
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 5135
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5136
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 5137
    .local v2, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 5139
    .end local v0    # "userSwitchedReceiver":Landroid/content/BroadcastReceiver;
    .end local v1    # "userSwitchedFilter":Landroid/content/IntentFilter;
    .end local v2    # "am":Landroid/app/ActivityManager;
    :goto_0
    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 5167
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$2700(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v0

    return v0
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 5051
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 5052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5053
    monitor-exit v0

    .line 5054
    return-void

    .line 5053
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUserState(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5186
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 5187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->delete(I)V

    .line 5188
    monitor-exit v0

    .line 5189
    return-void

    .line 5188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "baseRestrictions"    # Landroid/os/Bundle;

    .line 5020
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1700(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/RestrictionsSet;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5023
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1800(Lcom/android/server/pm/UserManagerService;I)V

    .line 5025
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5027
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 5028
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5029
    if-eqz v1, :cond_1

    .line 5030
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->access$1500(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_0

    .line 5032
    :cond_1
    const-string v0, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserInfo not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    :goto_0
    monitor-exit v2

    .line 5035
    return-void

    .line 5034
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 5025
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setDeviceManaged(Z)V
    .locals 2
    .param p1, "isManaged"    # Z

    .line 5058
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5059
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1902(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 5060
    monitor-exit v0

    .line 5061
    return-void

    .line 5060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V
    .locals 1
    .param p1, "originatingUserId"    # I
    .param p2, "global"    # Landroid/os/Bundle;
    .param p3, "local"    # Lcom/android/server/pm/RestrictionsSet;
    .param p4, "isDeviceOwner"    # Z

    .line 5006
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Lcom/android/server/pm/RestrictionsSet;Z)V

    .line 5008
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .locals 2
    .param p1, "forceEphemeralUsers"    # Z

    .line 5105
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2302(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 5107
    monitor-exit v0

    .line 5108
    return-void

    .line 5107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 5086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5088
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5089
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 5090
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 5094
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v4, v5, p2}, Lcom/android/server/pm/UserManagerService;->access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 5095
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v4, v3}, Lcom/android/server/pm/UserManagerService;->access$1500(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 5096
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5097
    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->access$2200(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5100
    nop

    .line 5101
    return-void

    .line 5091
    .restart local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_1
    :goto_0
    :try_start_3
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5092
    return-void

    .line 5096
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .end local p1    # "userId":I
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5099
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/pm/UserManagerService$LocalService;
    .restart local p1    # "userId":I
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5100
    throw v2
.end method

.method public setUserManaged(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "isManaged"    # Z

    .line 5072
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5073
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5074
    monitor-exit v0

    .line 5075
    return-void

    .line 5074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserState(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userState"    # I

    .line 5179
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v0

    monitor-enter v0

    .line 5180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->put(II)V

    .line 5181
    monitor-exit v0

    .line 5182
    return-void

    .line 5181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldIgnorePrepareStorageErrors(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 5338
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$400(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$3300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 5340
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService$UserData;->getIgnorePrepareStorageErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 5341
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
