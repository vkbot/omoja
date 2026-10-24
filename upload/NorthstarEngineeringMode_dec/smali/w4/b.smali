.class public final Lw4/b;
.super Lv4/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:Lx4/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv4/a;-><init>()V

    new-instance v0, Lx4/b;

    invoke-direct {v0}, Lx4/b;-><init>()V

    iput-object v0, p0, Lw4/b;->c:Lx4/b;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lw4/b;->c:Lx4/b;

    iget p0, p0, Lx4/b;->c:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()D
    .locals 5

    iget-object p0, p0, Lw4/b;->c:Lx4/b;

    iget v0, p0, Lx4/b;->c:I

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lx4/b;->r:D

    int-to-long v3, v0

    long-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lz4/b;->e(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public final c([DI)D
    .locals 2

    iget-object p0, p0, Lw4/b;->c:Lx4/b;

    invoke-virtual {p0, p1, p2}, Lx4/b;->c([DI)D

    move-result-wide p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lz4/b;->e(DD)D

    move-result-wide p0

    return-wide p0
.end method
