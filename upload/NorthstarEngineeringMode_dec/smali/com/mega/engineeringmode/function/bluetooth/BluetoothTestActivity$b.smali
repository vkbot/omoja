.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected profile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;ILandroid/bluetooth/BluetoothProfile;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected profile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmega/log/MLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->D:Landroid/os/Handler;

    new-instance v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;

    invoke-direct {v1, p0, p1}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;-><init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
