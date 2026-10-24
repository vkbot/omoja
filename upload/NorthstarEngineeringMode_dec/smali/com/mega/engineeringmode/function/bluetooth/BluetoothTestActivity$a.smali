.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBluetoothReceiver  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
