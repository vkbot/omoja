.class public Lcom/callisto/auto/gatherer/model/BluetoothBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_bt_stat:I

.field private b_dev_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtStat()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/BluetoothBean;->b_bt_stat:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/BluetoothBean;->b_dev_name:Ljava/lang/String;

    return-object v0
.end method

.method public setBtStat(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/BluetoothBean;->b_bt_stat:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/BluetoothBean;->b_dev_name:Ljava/lang/String;

    return-void
.end method
