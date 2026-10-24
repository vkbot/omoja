.class public final Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:I

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lz4/d;->a:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Lz4/d;->b:J

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lz4/d;->c:I

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lz4/d;->d:I

    const-wide/high16 v0, 0x3ca0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    const-wide/high16 v0, 0x10000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    return-void
.end method

.method public static a(DD)Z
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lz4/d;->b(DD)Z

    move-result v2

    if-nez v2, :cond_1

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Lz4/b;->a(D)D

    move-result-wide p0

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(DD)Z
    .locals 12

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    xor-long v4, v0, v2

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lz4/b;->b(J)J

    move-result-wide v0

    int-to-long v2, v5

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_0
    cmp-long v4, v0, v2

    sget-wide v6, Lz4/d;->b:J

    sget-wide v8, Lz4/d;->a:J

    if-gez v4, :cond_1

    sub-long/2addr v2, v8

    sub-long/2addr v0, v6

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v8

    sub-long/2addr v2, v6

    move-wide v10, v0

    move-wide v0, v2

    move-wide v2, v10

    :goto_0
    int-to-long v6, v5

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    sub-long/2addr v6, v2

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return v5
.end method
