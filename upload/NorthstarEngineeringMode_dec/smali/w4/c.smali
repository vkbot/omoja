.class public final Lw4/c;
.super Lv4/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:Lw4/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv4/a;-><init>()V

    new-instance v0, Lw4/a;

    invoke-direct {v0}, Lw4/a;-><init>()V

    iput-object v0, p0, Lw4/c;->c:Lw4/a;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lw4/c;->c:Lw4/a;

    iget-wide v0, p0, Lw4/a;->c:J

    return-wide v0
.end method

.method public final b()D
    .locals 2

    iget-object p0, p0, Lw4/c;->c:Lw4/a;

    iget-wide v0, p0, Lw4/a;->r:D

    return-wide v0
.end method

.method public final c([DI)D
    .locals 9

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Ld/f;->d0([DIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lx4/a;

    invoke-direct {v0}, Lx4/a;-><init>()V

    int-to-double v1, p2

    invoke-virtual {v0, p1, p2}, Lx4/a;->c([DI)D

    move-result-wide v3

    div-double/2addr v3, v1

    const-wide/16 v5, 0x0

    :goto_0
    if-ge p0, p2, :cond_0

    aget-wide v7, p1, p0

    sub-double/2addr v7, v3

    add-double/2addr v5, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v5, v1

    add-double/2addr v5, v3

    return-wide v5

    :cond_1
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method
