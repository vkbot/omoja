.class public Lcom/callisto/auto/gatherer/model/SnmBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callisto/auto/gatherer/model/SnmBean$Ip;,
        Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;,
        Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;,
        Lcom/callisto/auto/gatherer/model/SnmBean$Udp;
    }
.end annotation


# instance fields
.field private b_icmp:Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;

.field private b_ip:Lcom/callisto/auto/gatherer/model/SnmBean$Ip;

.field private b_tcp:Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;

.field private b_udp:Lcom/callisto/auto/gatherer/model/SnmBean$Udp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;-><init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_ip:Lcom/callisto/auto/gatherer/model/SnmBean$Ip;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;-><init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_icmp:Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;-><init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_tcp:Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;

    new-instance v0, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;

    invoke-direct {v0, p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;-><init>(Lcom/callisto/auto/gatherer/model/SnmBean;)V

    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_udp:Lcom/callisto/auto/gatherer/model/SnmBean$Udp;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/model/SnmBean;->setForwarding(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/model/SnmBean;->setOutRsts(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/model/SnmBean;->setNoPorts(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/callisto/auto/gatherer/model/SnmBean;->setInMsgs(Ljava/lang/String;)V

    return-void
.end method

.method public getForwarding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_ip:Lcom/callisto/auto/gatherer/model/SnmBean$Ip;

    invoke-static {p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;->access$000(Lcom/callisto/auto/gatherer/model/SnmBean$Ip;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInMsgs()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_icmp:Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;

    invoke-static {p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;->access$100(Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoPorts()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_udp:Lcom/callisto/auto/gatherer/model/SnmBean$Udp;

    invoke-static {p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;->access$300(Lcom/callisto/auto/gatherer/model/SnmBean$Udp;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutRsts()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_tcp:Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;

    invoke-static {p0}, Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;->access$200(Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSnmBeanEqual(Lcom/callisto/auto/gatherer/model/SnmBean;Lcom/callisto/auto/gatherer/model/SnmBean;)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/SnmBean;->getForwarding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/SnmBean;->getForwarding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/SnmBean;->getInMsgs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/SnmBean;->getInMsgs()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/SnmBean;->getOutRsts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/SnmBean;->getOutRsts()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/SnmBean;->getNoPorts()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/SnmBean;->getNoPorts()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0

    :cond_2
    :goto_1
    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    return p0
.end method

.method public setForwarding(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_ip:Lcom/callisto/auto/gatherer/model/SnmBean$Ip;

    invoke-static {p0, p1}, Lcom/callisto/auto/gatherer/model/SnmBean$Ip;->access$002(Lcom/callisto/auto/gatherer/model/SnmBean$Ip;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setInMsgs(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_icmp:Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;

    invoke-static {p0, p1}, Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;->access$102(Lcom/callisto/auto/gatherer/model/SnmBean$Icmp;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setNoPorts(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_udp:Lcom/callisto/auto/gatherer/model/SnmBean$Udp;

    invoke-static {p0, p1}, Lcom/callisto/auto/gatherer/model/SnmBean$Udp;->access$302(Lcom/callisto/auto/gatherer/model/SnmBean$Udp;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setOutRsts(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/callisto/auto/gatherer/model/SnmBean;->b_tcp:Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;

    invoke-static {p0, p1}, Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;->access$202(Lcom/callisto/auto/gatherer/model/SnmBean$Tcp;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
