.class public final Lx4/b;
.super Lv4/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:I

.field public final r:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lv4/a;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lx4/b;->r:D

    const/4 v0, 0x0

    iput v0, p0, Lx4/b;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget p0, p0, Lx4/b;->c:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lx4/b;->r:D

    return-wide v0
.end method

.method public final c([DI)D
    .locals 5

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Ld/f;->d0([DIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    if-ge p0, p2, :cond_1

    aget-wide v2, p1, p0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lz4/b;->g(D[D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_1
    return-wide v0
.end method
