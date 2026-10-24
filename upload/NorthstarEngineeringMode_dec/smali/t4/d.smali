.class public final Lt4/d;
.super Lb4/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt4/d;->c:D

    return-void
.end method


# virtual methods
.method public final g(DI)D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p3

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    iget-wide v0, p0, Lt4/d;->c:D

    sub-double/2addr v2, v0

    add-double/2addr v2, p1

    return-wide v2
.end method

.method public final h(DI)D
    .locals 2

    int-to-double p1, p3

    iget-wide v0, p0, Lt4/d;->c:D

    sub-double/2addr v0, p1

    mul-double/2addr v0, p1

    return-wide v0
.end method
