.class public final Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Landroid/bluetooth/BluetoothProfile;

.field public final synthetic x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    iput p2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->c:I

    iput-object p3, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->r:Landroid/bluetooth/BluetoothProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->r:Landroid/bluetooth/BluetoothProfile;

    iget-object v2, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->x:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;

    iget p0, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b$a;->c:I

    if-ne p0, v0, :cond_0

    iget-object p0, v2, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    iput-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->p:Landroid/bluetooth/BluetoothHeadsetClient;

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    if-ne p0, v0, :cond_1

    iget-object p0, v2, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    check-cast v1, Landroid/bluetooth/BluetoothPbapClient;

    iput-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->q:Landroid/bluetooth/BluetoothPbapClient;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    iget-object p0, v2, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, p0, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->r:Landroid/bluetooth/BluetoothA2dp;

    :cond_2
    :goto_0
    iget-object p0, v2, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity$b;->a:Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;

    invoke-static {p0}, Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;->o(Lcom/mega/engineeringmode/function/bluetooth/BluetoothTestActivity;)V

    return-void
.end method
