.class public final Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/bluetooth/BluetoothEnabler;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/bluetooth/BluetoothEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;->a:Lcom/mega/carsettings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/mega/carsettings/bluetooth/BluetoothEnabler$a;->a:Lcom/mega/carsettings/bluetooth/BluetoothEnabler;

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;->g(I)V

    return-void
.end method
