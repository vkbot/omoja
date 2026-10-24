.class public Lh4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final Z:[J


# instance fields
.field public final c:Ln4/d;

.field public final r:Ljava/nio/ByteOrder;

.field public x:J

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x40

    new-array v0, v0, [J

    sput-object v0, Lh4/a;->Z:[J

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    sget-object v2, Lh4/a;->Z:[J

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    shl-long/2addr v3, v0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln4/d;

    invoke-direct {v0, p1}, Ln4/d;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lh4/a;->c:Ln4/d;

    iput-object p2, p0, Lh4/a;->r:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 12

    if-ltz p1, :cond_6

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_6

    :goto_0
    iget v0, p0, Lh4/a;->y:I

    iget-object v1, p0, Lh4/a;->c:Ln4/d;

    iget-object v2, p0, Lh4/a;->r:Ljava/nio/ByteOrder;

    const-wide/16 v3, 0x0

    if-ge v0, p1, :cond_2

    const/16 v5, 0x39

    if-ge v0, v5, :cond_2

    invoke-virtual {v1}, Ln4/e;->read()I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lh4/a;->x:J

    iget v5, p0, Lh4/a;->y:I

    shl-long/2addr v0, v5

    or-long/2addr v0, v2

    iput-wide v0, p0, Lh4/a;->x:J

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lh4/a;->x:J

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lh4/a;->x:J

    :goto_1
    iget v0, p0, Lh4/a;->y:I

    add-int/2addr v0, v4

    iput v0, p0, Lh4/a;->y:I

    goto :goto_0

    :cond_2
    if-ge v0, p1, :cond_5

    sub-int v0, p1, v0

    rsub-int/lit8 v5, v0, 0x8

    invoke-virtual {v1}, Ln4/e;->read()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v6, v3

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v3, Lh4/a;->Z:[J

    if-ne v2, v1, :cond_4

    aget-wide v1, v3, v0

    and-long/2addr v1, v6

    iget-wide v8, p0, Lh4/a;->x:J

    iget v4, p0, Lh4/a;->y:I

    shl-long/2addr v1, v4

    or-long/2addr v1, v8

    iput-wide v1, p0, Lh4/a;->x:J

    ushr-long v0, v6, v0

    aget-wide v6, v3, v5

    and-long/2addr v0, v6

    goto :goto_2

    :cond_4
    iget-wide v1, p0, Lh4/a;->x:J

    shl-long/2addr v1, v0

    ushr-long v8, v6, v5

    aget-wide v10, v3, v0

    and-long/2addr v8, v10

    or-long v0, v1, v8

    iput-wide v0, p0, Lh4/a;->x:J

    aget-wide v0, v3, v5

    and-long/2addr v0, v6

    :goto_2
    iget-wide v6, p0, Lh4/a;->x:J

    aget-wide v2, v3, p1

    and-long/2addr v6, v2

    iput-wide v0, p0, Lh4/a;->x:J

    iput v5, p0, Lh4/a;->y:I

    :goto_3
    return-wide v6

    :cond_5
    invoke-virtual {p0, p1}, Lh4/a;->b(I)J

    move-result-wide p0

    return-wide p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "count must not be negative or greater than 63"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)J
    .locals 4

    iget-object v0, p0, Lh4/a;->r:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v2, Lh4/a;->Z:[J

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lh4/a;->x:J

    aget-wide v2, v2, p1

    and-long/2addr v2, v0

    ushr-long/2addr v0, p1

    iput-wide v0, p0, Lh4/a;->x:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lh4/a;->x:J

    iget v3, p0, Lh4/a;->y:I

    sub-int/2addr v3, p1

    shr-long/2addr v0, v3

    aget-wide v2, v2, p1

    and-long/2addr v2, v0

    :goto_0
    iget v0, p0, Lh4/a;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Lh4/a;->y:I

    return-wide v2
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lh4/a;->c:Ln4/d;

    invoke-virtual {p0}, Ln4/e;->close()V

    return-void
.end method
