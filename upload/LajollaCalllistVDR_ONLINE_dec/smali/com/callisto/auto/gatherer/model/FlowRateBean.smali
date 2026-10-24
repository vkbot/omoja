.class public Lcom/callisto/auto/gatherer/model/FlowRateBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_app_rx_packets:J

.field private b_app_tx_packets:J

.field private b_flow_app_pkg:Ljava/lang/String;

.field private b_network_type:I

.field private b_total_rx_bytes:J

.field private b_total_tx_bytes:J

.field private b_uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppRxPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_rx_packets:J

    return-wide v0
.end method

.method public getAppTxPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_tx_packets:J

    return-wide v0
.end method

.method public getFlowAppPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_flow_app_pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_network_type:I

    return v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_rx_bytes:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_tx_bytes:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_uid:I

    return v0
.end method

.method public isFlowRateBeanEqual(Lcom/callisto/auto/gatherer/model/FlowRateBean;Lcom/callisto/auto/gatherer/model/FlowRateBean;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getFlowAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getFlowAppPkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getAppTxPackets()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getAppTxPackets()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getAppRxPackets()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getAppRxPackets()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getTotalTxBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/FlowRateBean;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_flow_app_pkg:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_network_type:I

    return-void
.end method

.method public setRxPackets(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_rx_packets:J

    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_rx_bytes:J

    return-void
.end method

.method public setTotalTxBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_tx_bytes:J

    return-void
.end method

.method public setTxPackets(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_tx_packets:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_uid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{b_flow_app_pkg=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_flow_app_pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', b_network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_network_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", b_total_rx_bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_rx_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", b_total_tx_bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_total_tx_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", b_app_rx_packets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_rx_packets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", b_app_tx_packets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callisto/auto/gatherer/model/FlowRateBean;->b_app_tx_packets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
