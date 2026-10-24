.class public final Lz4/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>(D)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double/2addr v0, p1

    double-to-int v0, v0

    :goto_0
    neg-int v1, v0

    int-to-double v1, v1

    const-wide v3, 0x3ff921fb40000000L    # 1.570796251296997

    mul-double/2addr v3, v1

    add-double v5, p1, v3

    sub-double v7, v5, p1

    sub-double/2addr v7, v3

    neg-double v3, v7

    const-wide v7, 0x3e74442d18000000L    # 7.549789948768648E-8

    mul-double/2addr v7, v1

    add-double v9, v7, v5

    sub-double v5, v9, v5

    sub-double/2addr v5, v7

    neg-double v5, v5

    add-double/2addr v3, v5

    const-wide v5, 0x3c91a62633145c07L    # 6.123233995736766E-17

    mul-double/2addr v1, v5

    add-double v5, v1, v9

    sub-double v7, v5, v9

    sub-double/2addr v7, v1

    neg-double v1, v7

    add-double/2addr v3, v1

    const-wide/16 v1, 0x0

    cmpl-double v1, v5, v1

    if-lez v1, :cond_0

    iput v0, p0, Lz4/b$a;->a:I

    iput-wide v5, p0, Lz4/b$a;->b:D

    iput-wide v3, p0, Lz4/b$a;->c:D

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
