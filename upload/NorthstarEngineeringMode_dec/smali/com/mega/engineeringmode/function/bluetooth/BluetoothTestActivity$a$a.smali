.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic r:Landroid/content/Intent;

.field public final synthetic x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->r:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "android.bluetooth.device.action.FOUND"

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->r:Landroid/content/Intent;

    const-string v4, "BluetoothTestActivity"

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a$a;->x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ACTION_FOUND  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-static {v2, v0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  BondState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    const-string/jumbo p0, "scanDevice null"

    invoke-static {v4, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto/16 :goto_3

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0xc

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ACTION_STATE_CHANGED  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  isChecked  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v5, :cond_5

    const/4 v0, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v1, v0}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    :cond_4
    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p(Z)V

    goto/16 :goto_3

    :cond_5
    if-ne v0, v6, :cond_f

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v0, v0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->s:Lcom/mega/engineeringmode/ui/MegaSwitch;

    invoke-virtual {v0, v7}, Lcom/mega/engineeringmode/ui/MegaSwitch;->setChecked(Z)V

    :cond_6
    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {p0, v7}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p(Z)V

    goto/16 :goto_3

    :cond_7
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "  state "

    const-string v9, "  address "

    if-nez v0, :cond_d

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->c:Ld/g;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Ld/g;->Z:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f1202e4

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f120084

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lk2/d;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v1, v1, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->x:Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mega/engineeringmode/function/bluetooth/BlueToothDataAdapter;->c:Ld/g;

    :cond_c
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_BOND_STATE_CHANGED  name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {p0, v0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_3

    :cond_d
    :goto_2
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_e

    const-string p0, "device == null"

    invoke-static {v4, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ,name "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isConnected "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-static {v1, v2}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-virtual {v0, v2}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$a;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-static {p0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V

    :cond_f
    :goto_3
    return-void
.end method
