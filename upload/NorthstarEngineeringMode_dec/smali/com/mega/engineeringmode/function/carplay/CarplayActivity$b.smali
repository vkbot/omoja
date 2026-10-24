.class public final Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/d;


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

    iput-object p1, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;->a:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string p0, "CarplayActivity"

    const-string/jumbo v0, "onCarPlayDeviceBatteryLeveChanged "

    invoke-static {p0, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onCarPlayDeviceDeleted "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarplayActivity"

    invoke-static {p1, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(IILjava/lang/String;)V
    .locals 3

    const-string v0, "callback ==> onCarPlayConnectStatusChanged, state: "

    const-string v1, "  type: "

    const-string v2, "  deviceInfo: "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarplayActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity$b;->a:Lcom/mega/engineeringmode/function/carplay/CarplayActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/carplay/CarplayActivity;->l:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
