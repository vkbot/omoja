.class public Lcom/callisto/auto/gatherer/model/SysMemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_sys_mem:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSysMem()D
    .locals 2

    iget-wide v0, p0, Lcom/callisto/auto/gatherer/model/SysMemBean;->b_sys_mem:D

    return-wide v0
.end method

.method public setSysMem(D)V
    .locals 0

    iput-wide p1, p0, Lcom/callisto/auto/gatherer/model/SysMemBean;->b_sys_mem:D

    return-void
.end method
