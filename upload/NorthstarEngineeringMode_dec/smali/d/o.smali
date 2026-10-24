.class public final Ld/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/o$a;,
        Ld/o$c;,
        Ld/o$b;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ld/h;

.field public final c:Ld/e;

.field public d:Ld/a;

.field public e:Ld/b;

.field public f:Ld/i;

.field public g:Ld/j;

.field public h:Ld/q;

.field public i:Ld/p;

.field public j:Ld/k;

.field public k:Ld/r;

.field public l:Ld/s;

.field public m:Ld/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ld/l;Ld/h;Ld/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o;->a:Landroid/content/Context;

    iput-object p3, p0, Ld/o;->b:Ld/h;

    iput-object p4, p0, Ld/o;->c:Ld/e;

    iput-object p0, p2, Ld/l;->b:Ld/o;

    const-string p0, "o"

    const-string p1, "LocalBluetoothProfileManager construction complete"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Ld/n;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ld/o$c;

    invoke-direct {v0, p0, p1}, Ld/o$c;-><init>(Ld/o;Ld/n;)V

    iget-object p0, p0, Ld/o;->c:Ld/e;

    invoke-virtual {p0, p2, v0}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    return-void
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Ld/f;->F(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/List;

    move-result-object v0

    const-string v1, "o"

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLocalProfiles: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Ld/o;->d:Ld/a;

    iget-object v3, p0, Ld/o;->b:Ld/h;

    iget-object v4, p0, Ld/o;->a:Landroid/content/Context;

    if-nez v2, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Adding local A2DP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/a;

    invoke-direct {v2, v4, v3}, Ld/a;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->d:Ld/a;

    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v2, v5}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Ld/o;->e:Ld/b;

    if-nez v2, :cond_2

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Adding local A2DP SINK profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/b;

    invoke-direct {v2, v4, v3}, Ld/b;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->e:Ld/b;

    const-string v5, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v2, v5}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Ld/o;->f:Ld/i;

    iget-object v5, p0, Ld/o;->c:Ld/e;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Adding local HEADSET profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/i;

    invoke-direct {v2, v4, v3}, Ld/i;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->f:Ld/i;

    new-instance v6, Ld/o$a;

    const-string v7, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    const/16 v8, 0xa

    invoke-direct {v6, p0, v2, v7, v8}, Ld/o$a;-><init>(Ld/o;Ld/n;Ljava/lang/String;I)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v2, v6}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    invoke-virtual {v5, v7, v6}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    :cond_3
    iget-object v2, p0, Ld/o;->g:Ld/j;

    if-nez v2, :cond_4

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Adding local HfpClient profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/j;

    invoke-direct {v2, v4, v3}, Ld/j;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->g:Ld/j;

    new-instance v6, Ld/o$a;

    const-string v7, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    const/4 v8, 0x0

    invoke-direct {v6, p0, v2, v7, v8}, Ld/o$a;-><init>(Ld/o;Ld/n;Ljava/lang/String;I)V

    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v2, v6}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    invoke-virtual {v5, v7, v6}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    :cond_4
    iget-object v2, p0, Ld/o;->i:Ld/p;

    if-nez v2, :cond_5

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Adding local MAP CLIENT profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/p;

    invoke-direct {v2, v4, v3}, Ld/p;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->i:Ld/p;

    const-string v6, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v2, v6}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Ld/o;->h:Ld/q;

    if-nez v2, :cond_6

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Adding local MAP profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/q;

    invoke-direct {v2, v4, v3}, Ld/q;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->h:Ld/q;

    const-string v6, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v2, v6}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Ld/o;->j:Ld/k;

    if-nez v2, :cond_7

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Adding local HID_HOST profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/k;

    invoke-direct {v2, v4, v3}, Ld/k;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v2, p0, Ld/o;->j:Ld/k;

    const-string v6, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v2, v6}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Ld/o;->k:Ld/r;

    if-nez v2, :cond_8

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Adding local PAN profile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ld/r;

    invoke-direct {v2, v4}, Ld/r;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ld/o;->k:Ld/r;

    new-instance v6, Ld/o$b;

    invoke-direct {v6, p0, v2}, Ld/o$c;-><init>(Ld/o;Ld/n;)V

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v2, v6}, Ld/e;->b(Ljava/lang/String;Ld/o$c;)V

    :cond_8
    iget-object v2, p0, Ld/o;->m:Ld/t;

    if-nez v2, :cond_9

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "Adding local PBAP profile"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ld/t;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    new-instance v8, Ld/t$a;

    invoke-direct {v8, v6}, Ld/t$a;-><init>(Ld/t;)V

    invoke-virtual {v7, v4, v8, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iput-object v6, p0, Ld/o;->m:Ld/t;

    const-string v2, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v6, v2}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Ld/o;->l:Ld/s;

    if-nez v2, :cond_a

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Adding local PBAP Client profile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ld/s;

    invoke-direct {v0, v4, v3}, Ld/s;-><init>(Landroid/content/Context;Ld/h;)V

    iput-object v0, p0, Ld/o;->l:Ld/s;

    const-string v1, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, v0, v1}, Ld/o;->a(Ld/n;Ljava/lang/String;)V

    :cond_a
    iget-object p0, v5, Ld/e;->f:Ld/e$f;

    iget-object v0, v5, Ld/e;->d:Landroid/content/IntentFilter;

    iget-object v1, v5, Ld/e;->h:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_b
    :goto_0
    const-string/jumbo p0, "supportedList is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized c([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection<",
            "Ld/n;",
            ">;",
            "Ljava/util/Collection<",
            "Ld/n;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    const-string v0, "New Profiles"

    const-string v1, "Current Profiles"

    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const-string v2, "o"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Ld/o;->f:Ld/i;

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    sget-object v1, Lp2/a;->e:Landroid/os/ParcelUuid;

    invoke-static {p2, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lp2/a;->d:Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lp2/a;->g:Landroid/os/ParcelUuid;

    invoke-static {p2, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lp2/a;->f:Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Ld/o;->f:Ld/i;

    invoke-virtual {v1, p6}, Ld/i;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Ld/o;->f:Ld/i;

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ld/o;->f:Ld/i;

    invoke-interface {p4, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Ld/o;->g:Ld/j;

    if-eqz v1, :cond_6

    sget-object v1, Lp2/a;->g:Landroid/os/ParcelUuid;

    invoke-static {p1, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lp2/a;->f:Landroid/os/ParcelUuid;

    invoke-static {p2, v1}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Ld/o;->g:Ld/j;

    invoke-virtual {p2, p6}, Ld/j;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_6

    :cond_5
    iget-object p2, p0, Ld/o;->g:Ld/j;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->g:Ld/j;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object p2, p0, Ld/o;->d:Ld/a;

    if-eqz p2, :cond_8

    sget-object p2, Ld/a;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Ld/o;->d:Ld/a;

    invoke-virtual {p2, p6}, Ld/a;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_8

    :cond_7
    iget-object p2, p0, Ld/o;->d:Ld/a;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->d:Ld/a;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_8
    iget-object p2, p0, Ld/o;->e:Ld/b;

    if-eqz p2, :cond_a

    sget-object p2, Ld/b;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Ld/o;->e:Ld/b;

    invoke-virtual {p2, p6}, Ld/b;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_a

    :cond_9
    iget-object p2, p0, Ld/o;->e:Ld/b;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->e:Ld/b;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_a
    iget-object p2, p0, Ld/o;->j:Ld/k;

    if-eqz p2, :cond_c

    sget-object p2, Lp2/a;->h:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_b

    sget-object p2, Lp2/a;->i:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Ld/o;->j:Ld/k;

    invoke-virtual {p2, p6}, Ld/k;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_c

    :cond_b
    iget-object p2, p0, Ld/o;->j:Ld/k;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->j:Ld/k;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_c
    if-eqz p5, :cond_d

    const-string p2, "o"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-object p2, Lp2/a;->j:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->b([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Ld/o;->k:Ld/r;

    if-nez p2, :cond_f

    :cond_e
    if-eqz p5, :cond_10

    :cond_f
    iget-object p2, p0, Ld/o;->k:Ld/r;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->k:Ld/r;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_10
    iget-object p2, p0, Ld/o;->h:Ld/q;

    if-eqz p2, :cond_11

    invoke-virtual {p2, p6}, Ld/q;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_11

    iget-object p2, p0, Ld/o;->h:Ld/q;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->h:Ld/q;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->h:Ld/q;

    const/4 p5, 0x1

    invoke-virtual {p2, p6, p5}, Ld/q;->d(Landroid/bluetooth/BluetoothDevice;Z)V

    :cond_11
    iget-object p2, p0, Ld/o;->m:Ld/t;

    if-eqz p2, :cond_12

    invoke-virtual {p2, p6}, Ld/t;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_12

    iget-object p2, p0, Ld/o;->m:Ld/t;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->m:Ld/t;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->m:Ld/t;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_12
    iget-object p2, p0, Ld/o;->i:Ld/p;

    if-eqz p2, :cond_14

    sget-object p2, Ld/p;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p0, Ld/o;->i:Ld/p;

    invoke-virtual {p2, p6}, Ld/p;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v2, :cond_14

    :cond_13
    iget-object p2, p0, Ld/o;->i:Ld/p;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Ld/o;->i:Ld/p;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_14
    iget-object p2, p0, Ld/o;->l:Ld/s;

    if-eqz p2, :cond_16

    sget-object p2, Ld/s;->d:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Lp2/a;->a([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Ld/o;->l:Ld/s;

    invoke-virtual {p1, p6}, Ld/s;->b(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v2, :cond_16

    :cond_15
    iget-object p1, p0, Ld/o;->l:Ld/s;

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ld/o;->l:Ld/s;

    invoke-interface {p4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_16
    const-string p1, "o"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
