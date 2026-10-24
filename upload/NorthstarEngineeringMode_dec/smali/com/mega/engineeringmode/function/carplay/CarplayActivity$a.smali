.class public final Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/carplay/CarplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/carplay/CarplayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;->a:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callback ==> onLinkMgrSrvConnChange, isSrvBind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarplayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$a;->a:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    iget-boolean p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->j:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iput-boolean v0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->j:Z

    iget-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->i:Lv2/l;

    const-string v1, "mCarPlayLinkCallbacks contains callback: "

    const-string v2, "mCarPlayLinkCallbacks.size: "

    const-string/jumbo v3, "registerCarPlayLinkListener: "

    invoke-virtual {p1}, Lv2/l;->g()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerCarPlayLinkMgrListener --- callback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->n:Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "l"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lv2/l;->c:Lv2/h;

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    iget-object v4, p1, Lv2/l;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    new-instance v1, Lv2/m;

    invoke-direct {v1, p1}, Lv2/m;-><init>(Lv2/l;)V

    iput-object v1, p1, Lv2/l;->d:Lv2/m;

    iget-object v1, p1, Lv2/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lv2/l;->c:Lv2/h;

    iget-object p1, p1, Lv2/l;->d:Lv2/m;

    invoke-interface {v1, p1}, Lv2/h;->q(Lv2/c;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "registerCarPlayLinkMgrListener --- RemoteException"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "registerCarPlayLinkMgrListener --- mDeviceMgrProxy == null"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->l:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method
