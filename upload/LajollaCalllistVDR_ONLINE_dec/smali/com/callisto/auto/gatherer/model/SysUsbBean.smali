.class public Lcom/callisto/auto/gatherer/model/SysUsbBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_usb_stat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsbStat()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/SysUsbBean;->b_usb_stat:I

    return v0
.end method

.method public setUsbStat(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SysUsbBean;->b_usb_stat:I

    return-void
.end method
