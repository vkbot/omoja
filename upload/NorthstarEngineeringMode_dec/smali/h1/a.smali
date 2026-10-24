.class public final synthetic Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/i;


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/a;->a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    sget v0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->n:I

    iget-object p0, p0, Lh1/a;->a:Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLinkMgrSrvConnChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidAutoTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->m:Lh1/b;

    if-eqz p1, :cond_0

    const-string p0, "mAutoCallback has been registered, return"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Lh1/b;

    invoke-direct {p1, p0}, Lh1/b;-><init>(Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;)V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->m:Lh1/b;

    invoke-static {}, Lv2/l;->d()Lv2/l;

    move-result-object p1

    iget-object v0, p0, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->m:Lh1/b;

    const-string/jumbo v1, "registerAndroidAutoConnectionStateListener contains callback: "

    const-string/jumbo v2, "registerAndroidAutoConnectionStateListener.size: "

    const-string/jumbo v3, "registerAndroidAutoConnectionStateListener: "

    invoke-virtual {p1}, Lv2/l;->g()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerAndroidAutoConnectionStateListener --- callback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "l"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lv2/l;->c:Lv2/h;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    iget-object v4, p1, Lv2/l;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lv2/o;

    invoke-direct {v0, p1}, Lv2/o;-><init>(Lv2/l;)V

    iput-object v0, p1, Lv2/l;->f:Lv2/o;

    iget-object v0, p1, Lv2/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lv2/l;->c:Lv2/h;

    iget-object p1, p1, Lv2/l;->f:Lv2/o;

    invoke-interface {v0, p1}, Lv2/h;->t(Lv2/a;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "registerAndroidAutoConnectionStateListener --- RemoteException"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "registerAndroidAutoConnectionStateListener --- mDeviceMgrProxy == null"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/mega/engineeringmode/function/androidauto/AndroidAutoTestActivity;->n()V

    :cond_4
    :goto_2
    return-void
.end method
