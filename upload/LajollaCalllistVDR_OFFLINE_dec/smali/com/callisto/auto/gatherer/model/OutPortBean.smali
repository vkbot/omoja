.class public Lcom/callisto/auto/gatherer/model/OutPortBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_conn_port:I

.field private b_conn_state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_port:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_state:I

    return p0
.end method

.method public isOutPortEqual(Lcom/callisto/auto/gatherer/model/OutPortBean;Lcom/callisto/auto/gatherer/model/OutPortBean;)Z
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/OutPortBean;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/OutPortBean;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/callisto/auto/gatherer/model/OutPortBean;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callisto/auto/gatherer/model/OutPortBean;->getState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_port:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_state:I

    return-void
.end method
