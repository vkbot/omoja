.class public final synthetic Lg1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/engineeringmode/function/BaseFunctionActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg1/r;->a:I

    iput-object p1, p0, Lg1/r;->b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget v0, p0, Lg1/r;->a:I

    iget-object p0, p0, Lg1/r;->b:Lcom/mega/engineeringmode/function/BaseFunctionActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isChecked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isEnable  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothTestActivity"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    const-string p1, "enableRes  "

    invoke-static {p1, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->t:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result p0

    const-string p1, "disable  "

    invoke-static {p1, p0, v1}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/mega/engineeringmode/function/StrActivity;

    sget v0, Lcom/mega/engineeringmode/function/StrActivity;->y:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, " mSwitch click  "

    const-string v0, "StrActivity"

    invoke-static {p1, p2, v0}, La4/a;->n(Ljava/lang/String;ZLjava/lang/String;)V

    const/16 p1, 0xd

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/StrActivity;->n(BB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
