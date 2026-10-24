.class public Lcom/callisto/auto/gatherer/model/SockStatBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_sockets_used:I

.field private b_tcp_inuse:I

.field private b_udp_inuse:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSocketsUsed(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SockStatBean;->b_sockets_used:I

    return-void
.end method

.method public setTcpInuse(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SockStatBean;->b_tcp_inuse:I

    return-void
.end method

.method public setUdpInuse(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SockStatBean;->b_udp_inuse:I

    return-void
.end method
