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
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_port:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/callisto/auto/gatherer/model/OutPortBean;->b_conn_state:I

    return v0
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
