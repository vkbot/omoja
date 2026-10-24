.class public final Lz4/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final d:Lz4/b$d;

.field public static final e:Lz4/b$d;

.field public static final f:Lz4/b$d;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lz4/b$d;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lz4/b$d;-><init>(DD)V

    sput-object v0, Lz4/b$d;->d:Lz4/b$d;

    new-instance v0, Lz4/b$d;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lz4/b$d;-><init>(DD)V

    sput-object v0, Lz4/b$d;->e:Lz4/b$d;

    new-instance v0, Lz4/b$d;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2, v3, v4}, Lz4/b$d;-><init>(DD)V

    sput-object v0, Lz4/b$d;->f:Lz4/b$d;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lz4/b$d;->a:D

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/32 v2, -0x8000000

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lz4/b$d;->b:D

    sub-double/2addr p1, v0

    iput-wide p1, p0, Lz4/b$d;->c:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    cmpl-double v0, p3, v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    move-wide v3, v0

    goto :goto_1

    :cond_0
    move-wide v3, p3

    goto :goto_1

    :cond_1
    add-double v0, p1, p3

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lz4/b$d;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lz4/b$d;->a:D

    iput-wide p3, p0, Lz4/b$d;->b:D

    iput-wide p5, p0, Lz4/b$d;->c:D

    return-void
.end method

.method public static a(Lz4/b$d;J)Lz4/b$d;
    .locals 12

    new-instance v0, Lz4/b$d;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lz4/b$d;-><init>(D)V

    new-instance v10, Lz4/b$d;

    iget-wide v4, p0, Lz4/b$d;->a:D

    iget-wide v6, p0, Lz4/b$d;->b:D

    iget-wide v8, p0, Lz4/b$d;->c:D

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lz4/b$d;-><init>(DDD)V

    move-wide v3, p1

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_1

    and-long v7, v3, v8

    cmp-long v5, v7, v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v10}, Lz4/b$d;->b(Lz4/b$d;)Lz4/b$d;

    move-result-object v0

    :cond_0
    invoke-virtual {v10, v10}, Lz4/b$d;->b(Lz4/b$d;)Lz4/b$d;

    move-result-object v10

    const/4 v5, 0x1

    ushr-long/2addr v3, v5

    goto :goto_0

    :cond_1
    iget-wide v3, v0, Lz4/b$d;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lz4/b$d;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Lz4/b$d;->d:Lz4/b$d;

    goto :goto_2

    :cond_2
    invoke-static {v3, v4}, Lz4/b;->a(D)D

    move-result-wide v10

    cmpg-double p0, v10, v1

    const-wide/16 v0, 0x0

    if-gez p0, :cond_4

    new-instance p0, Lz4/b$d;

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    xor-long/2addr p1, v2

    cmp-long p1, p1, v5

    if-ltz p1, :cond_3

    move-wide p1, v0

    goto :goto_1

    :cond_3
    const-wide/high16 p1, -0x8000000000000000L

    :goto_1
    invoke-direct {p0, p1, p2, v0, v1}, Lz4/b$d;-><init>(DD)V

    move-object v0, p0

    goto :goto_2

    :cond_4
    cmpg-double p0, v3, v0

    if-gez p0, :cond_5

    and-long p0, p1, v8

    cmp-long p0, p0, v8

    if-nez p0, :cond_5

    sget-object v0, Lz4/b$d;->f:Lz4/b$d;

    goto :goto_2

    :cond_5
    sget-object v0, Lz4/b$d;->e:Lz4/b$d;

    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final b(Lz4/b$d;)Lz4/b$d;
    .locals 13

    new-instance v0, Lz4/b$d;

    iget-wide v1, p1, Lz4/b$d;->a:D

    iget-wide v3, p0, Lz4/b$d;->a:D

    mul-double/2addr v3, v1

    invoke-direct {v0, v3, v4}, Lz4/b$d;-><init>(D)V

    iget-wide v1, p0, Lz4/b$d;->c:D

    iget-wide v5, p1, Lz4/b$d;->c:D

    mul-double v7, v1, v5

    iget-wide v9, p0, Lz4/b$d;->b:D

    iget-wide p0, p1, Lz4/b$d;->b:D

    mul-double v11, v9, p0

    sub-double/2addr v3, v11

    mul-double/2addr v1, p0

    sub-double/2addr v3, v1

    mul-double/2addr v9, v5

    sub-double/2addr v3, v9

    sub-double/2addr v7, v3

    new-instance p0, Lz4/b$d;

    iget-wide v1, v0, Lz4/b$d;->c:D

    add-double/2addr v1, v7

    iget-wide v3, v0, Lz4/b$d;->b:D

    invoke-direct {p0, v3, v4, v1, v2}, Lz4/b$d;-><init>(DD)V

    return-object p0
.end method
