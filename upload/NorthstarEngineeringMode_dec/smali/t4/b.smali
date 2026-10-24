.class public final Lt4/b;
.super Lb4/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:D

.field public final synthetic r:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lt4/b;->c:D

    iput-wide p3, p0, Lt4/b;->r:D

    return-void
.end method


# virtual methods
.method public final g(DI)D
    .locals 0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public final h(DI)D
    .locals 13

    move-object v0, p0

    move/from16 v1, p3

    rem-int/lit8 v2, v1, 0x2

    iget-wide v3, v0, Lt4/b;->r:D

    iget-wide v5, v0, Lt4/b;->c:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_0

    int-to-double v0, v1

    div-double/2addr v0, v9

    sub-double/2addr v5, v0

    mul-double/2addr v5, v0

    mul-double/2addr v5, p1

    mul-double/2addr v0, v9

    add-double v9, v3, v0

    sub-double/2addr v9, v7

    add-double/2addr v3, v0

    :goto_0
    mul-double/2addr v3, v9

    div-double/2addr v5, v3

    goto :goto_1

    :cond_0
    int-to-double v0, v1

    sub-double/2addr v0, v7

    div-double/2addr v0, v9

    add-double v11, v3, v0

    add-double/2addr v5, v3

    add-double/2addr v5, v0

    mul-double/2addr v5, v11

    mul-double/2addr v5, p1

    neg-double v5, v5

    mul-double/2addr v0, v9

    add-double v9, v3, v0

    add-double/2addr v3, v0

    add-double/2addr v3, v7

    goto :goto_0

    :goto_1
    return-wide v5
.end method
