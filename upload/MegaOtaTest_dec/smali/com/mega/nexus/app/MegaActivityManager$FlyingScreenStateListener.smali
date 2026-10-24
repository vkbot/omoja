.class public Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;
.super Lcom/mega/nexus/app/IFlyingScreenStateListener$Stub;
.source "MegaActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/MegaActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingScreenStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/nexus/app/MegaActivityManager;


# direct methods
.method public constructor <init>(Lcom/mega/nexus/app/MegaActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/nexus/app/MegaActivityManager;

    .line 133
    iput-object p1, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-direct {p0}, Lcom/mega/nexus/app/IFlyingScreenStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndFlyingScreen(IILjava/lang/String;I)V
    .locals 4
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 152
    .local v1, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEndFlyingScreen,fromDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MegaNexusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mega/nexus/app/FlyingScreenListener;->onEndFlyingScreen(IILjava/lang/String;I)V

    .line 155
    .end local v1    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public onFlyingAppNotAllow(IILjava/lang/String;)V
    .locals 5
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MegaNexusManager"

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    .line 210
    const-string v0, "Should not happen after R, concern FLY_SCREEN_FAILED broadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 215
    .local v2, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlyingAppNotAllow,fromDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2, p1, p2, p3}, Lcom/mega/nexus/app/FlyingScreenListener;->onFlyingAppNotAllow(IILjava/lang/String;)V

    .line 218
    .end local v2    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 220
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public onFlyingFromExternalScreenForbidden(II)V
    .locals 5
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MegaNexusManager"

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    .line 178
    const-string v0, "Should not happen after R, concern FLY_SCREEN_FAILED broadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 183
    .local v2, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlyingFromExternalScreenForbidden,fromDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v2, p1, p2}, Lcom/mega/nexus/app/FlyingScreenListener;->onFlyingFromExternalScreenForbidden(II)V

    .line 186
    .end local v2    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 188
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public onFlyingFromPrimaryScreenForbidden(II)V
    .locals 5
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MegaNexusManager"

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    .line 162
    const-string v0, "Should not happen after R, concern FLY_SCREEN_FAILED broadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 165
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 167
    .local v2, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlyingFromPrimaryScreenForbidden,fromDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v2, p1, p2}, Lcom/mega/nexus/app/FlyingScreenListener;->onFlyingFromPrimaryScreenForbidden(II)V

    .line 170
    .end local v2    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 172
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public onFlyingFunctionForbidden(II)V
    .locals 5
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "MegaNexusManager"

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    .line 194
    const-string v0, "Should not happen after R, concern FLY_SCREEN_FAILED broadcast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 199
    .local v2, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlyingFunctionForbidden,fromDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toDisplayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v2, p1, p2}, Lcom/mega/nexus/app/FlyingScreenListener;->onFlyingFunctionForbidden(II)V

    .line 202
    .end local v2    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 204
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public onStartFlyingScreen(IILjava/lang/String;I)V
    .locals 4
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mega/nexus/app/MegaActivityManager$FlyingScreenStateListener;->this$0:Lcom/mega/nexus/app/MegaActivityManager;

    invoke-static {v0}, Lcom/mega/nexus/app/MegaActivityManager;->access$200(Lcom/mega/nexus/app/MegaActivityManager;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mega/nexus/app/FlyingScreenListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mega/nexus/app/FlyingScreenListener;

    .line 140
    .local v1, "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartFlyingScreen,fromDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toDisplayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MegaNexusManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mega/nexus/app/FlyingScreenListener;->onStartFlyingScreen(IILjava/lang/String;I)V

    .line 143
    .end local v1    # "listener":Lcom/mega/nexus/app/FlyingScreenListener;
    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
