.class public final Ls0/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld/l;

.field public final c:Landroid/content/IntentFilter;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ls0/a;->a:Landroid/content/Context;

    iput-object p2, p0, Ls0/a;->b:Ld/l;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Ls0/a;->c:Landroid/content/IntentFilter;

    const-string p0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "scan mode change = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ls0/a;->b:Ld/l;

    iget-object p2, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "a"

    invoke-static {p2, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p1

    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    invoke-static {p0, p2}, Ld/f;->a0(Landroid/bluetooth/BluetoothAdapter;I)V

    :cond_1
    return-void
.end method
