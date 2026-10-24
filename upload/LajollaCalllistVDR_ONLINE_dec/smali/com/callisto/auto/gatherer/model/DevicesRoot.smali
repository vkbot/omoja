.class public Lcom/callisto/auto/gatherer/model/DevicesRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b_is_root:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callisto/auto/gatherer/model/DevicesRoot;->b_is_root:Z

    return v0
.end method

.method public setRoot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callisto/auto/gatherer/model/DevicesRoot;->b_is_root:Z

    return-void
.end method
