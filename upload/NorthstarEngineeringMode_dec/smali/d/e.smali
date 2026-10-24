.class public final Ld/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/e$f;,
        Ld/e$c;,
        Ld/e$k;,
        Ld/e$i;,
        Ld/e$m;,
        Ld/e$j;,
        Ld/e$l;,
        Ld/e$g;,
        Ld/e$h;,
        Ld/e$n;,
        Ld/e$e;,
        Ld/e$b;,
        Ld/e$d;,
        Ld/e$a;
    }
.end annotation


# instance fields
.field public final a:Ld/l;

.field public final b:Ld/h;

.field public final c:Landroid/content/IntentFilter;

.field public final d:Landroid/content/IntentFilter;

.field public final e:Ljava/util/HashMap;

.field public final f:Ld/e$f;

.field public final g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ld/l;Ld/h;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/e$f;

    invoke-direct {v0, p0}, Ld/e$f;-><init>(Ld/e;)V

    new-instance v1, Ld/e$f;

    invoke-direct {v1, p0}, Ld/e$f;-><init>(Ld/e;)V

    iput-object v1, p0, Ld/e;->f:Ld/e$f;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Ld/e;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Ld/e;->a:Ld/l;

    iput-object p2, p0, Ld/e;->b:Ld/h;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Ld/e;->c:Landroid/content/IntentFilter;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Ld/e;->d:Landroid/content/IntentFilter;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ld/e;->e:Ljava/util/HashMap;

    iput-object p3, p0, Ld/e;->h:Landroid/content/Context;

    new-instance p2, Ld/e$c;

    invoke-direct {p2, p0}, Ld/e$c;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$i;

    invoke-direct {p2, p0}, Ld/e$i;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$m;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Ld/e$m;-><init>(Ld/e;Z)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$m;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Ld/e$m;-><init>(Ld/e;Z)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$j;

    invoke-direct {p2, p0}, Ld/e$j;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$l;

    invoke-direct {p2, p0}, Ld/e$l;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$l;

    invoke-direct {p2, p0}, Ld/e$l;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$g;

    invoke-direct {p2, p0}, Ld/e$g;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$h;

    invoke-direct {p2, p0}, Ld/e$h;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$n;

    invoke-direct {p2, p0}, Ld/e$n;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$e;

    invoke-direct {p2, p0}, Ld/e$e;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$b;

    invoke-direct {p2, p0}, Ld/e$b;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$b;

    invoke-direct {p2, p0}, Ld/e$b;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$d;

    invoke-direct {p2, p0}, Ld/e$d;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$d;

    invoke-direct {p2, p0}, Ld/e$d;-><init>(Ld/e;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$a;

    invoke-direct {p2, p0}, Ld/e$a;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    new-instance p2, Ld/e$a;

    invoke-direct {p2, p0}, Ld/e$a;-><init>(Ld/e;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p0, v1, p2}, Ld/e;->a(Ljava/lang/String;Ld/e$k;)V

    invoke-virtual {p3, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ld/e$k;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Ld/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ld/e;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ld/o$c;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Ld/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ld/e;->d:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Ld/e;->a:Ld/l;

    iget-object v0, v0, Ld/l;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v1, "BluetoothEventManager"

    if-nez v0, :cond_0

    const-string p0, "not found bondedDevices"

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bondedDevices="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Ld/e;->b:Ld/h;

    invoke-virtual {v2, v1}, Ld/h;->b(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ld/h;->a(Landroid/bluetooth/BluetoothDevice;)Ld/g;

    goto :goto_0

    :cond_2
    return-void
.end method
