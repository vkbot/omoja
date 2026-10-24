.class public Lcom/callisto/auto/gatherer/model/WifiStateBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_wifi_stat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWifiStat()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/WifiStateBean;->b_wifi_stat:I

    return v0
.end method

.method public setWifiStat(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/WifiStateBean;->b_wifi_stat:I

    return-void
.end method
