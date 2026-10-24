.class public Lcom/callisto/auto/gatherer/model/Rule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_icmp:Ljava/lang/String;

.field private b_ip:Ljava/lang/String;

.field private b_tcp:Ljava/lang/String;

.field private b_udp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcmp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_icmp:Ljava/lang/String;

    return-object p0
.end method

.method public getIp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_ip:Ljava/lang/String;

    return-object p0
.end method

.method public getTcp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_tcp:Ljava/lang/String;

    return-object p0
.end method

.method public getUdp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_udp:Ljava/lang/String;

    return-object p0
.end method

.method public setIcmp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_icmp:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_ip:Ljava/lang/String;

    return-void
.end method

.method public setTcp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_tcp:Ljava/lang/String;

    return-void
.end method

.method public setUdp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/Rule;->b_udp:Ljava/lang/String;

    return-void
.end method
