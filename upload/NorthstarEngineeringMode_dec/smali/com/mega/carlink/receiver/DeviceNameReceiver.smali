.class public Lcom/mega/carlink/receiver/DeviceNameReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "device_name_action"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "key_device_name"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive: deviceName=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DeviceNameReceiver"

    invoke-static {v0, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/mega/carlink/view/a;->a:Lcom/mega/carlink/view/a$a;

    invoke-virtual {p2, p1}, Lcom/mega/carlink/view/a$a;->a(Landroid/content/Context;)Lcom/mega/carlink/view/a;

    const-string p1, "deviceName"

    invoke-static {p0, p1}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
