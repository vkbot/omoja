.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->onServiceDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;->r:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    iput p2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/16 v0, 0x10

    const v1, 0x7f1202e6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;->r:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    iget p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$b;->c:I

    if-ne p0, v0, :cond_0

    iget-object p0, v3, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iput-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005a

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    if-ne p0, v0, :cond_1

    iget-object p0, v3, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f12005e

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v3, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iput-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    iget-object p0, v3, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    iput-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120055

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
