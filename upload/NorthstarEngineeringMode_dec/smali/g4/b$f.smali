.class public final Lg4/b$f;
.super Lg4/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final a:J

.field public b:J

.field public final synthetic c:Lg4/b;


# direct methods
.method public constructor <init>(Lg4/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/b$f;->c:Lg4/b;

    iput-wide p2, p0, Lg4/b$f;->a:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    iget-wide v0, p0, Lg4/b$f;->a:J

    iget-wide v2, p0, Lg4/b$f;->b:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lg4/b$f;->c:Lg4/b;

    iget-object p0, p0, Lg4/b;->x:Lh4/a;

    iget v2, p0, Lh4/a;->y:I

    int-to-long v2, v2

    iget-object p0, p0, Lh4/a;->c:Ln4/d;

    invoke-virtual {p0}, Ln4/e;->available()I

    move-result p0

    int-to-long v4, p0

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    div-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final b()Z
    .locals 4

    iget-wide v0, p0, Lg4/b$f;->b:J

    iget-wide v2, p0, Lg4/b$f;->a:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c([BII)I
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lg4/b$f;->a:J

    iget-wide v3, p0, Lg4/b$f;->b:J

    sub-long/2addr v1, v3

    int-to-long v3, p3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    :goto_0
    if-ge v0, p3, :cond_6

    iget-object v1, p0, Lg4/b$f;->c:Lg4/b;

    iget-object v2, v1, Lg4/b;->x:Lh4/a;

    iget v3, v2, Lh4/a;->y:I

    const v4, 0xffff

    const/4 v5, 0x1

    iget-object v6, v1, Lg4/b;->Z:Lg4/b$c;

    if-lez v3, :cond_2

    const/16 v1, 0x8

    invoke-static {v2, v1}, Lg4/b;->d(Lh4/a;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    add-int v2, p2, v0

    iget v3, v6, Lg4/b$c;->b:I

    iget-object v7, v6, Lg4/b$c;->a:[B

    aput-byte v1, v7, v3

    add-int/lit8 v7, v3, 0x1

    and-int/2addr v4, v7

    iget-boolean v7, v6, Lg4/b$c;->c:Z

    if-nez v7, :cond_1

    if-ge v4, v3, :cond_1

    iput-boolean v5, v6, Lg4/b$c;->c:Z

    :cond_1
    iput v4, v6, Lg4/b$c;->b:I

    aput-byte v1, p1, v2

    goto :goto_2

    :cond_2
    add-int v2, p2, v0

    sub-int v3, p3, v0

    iget-object v1, v1, Lg4/b;->y:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    :goto_1
    add-int v7, v2, v1

    if-ge v3, v7, :cond_4

    aget-byte v7, p1, v3

    iget v8, v6, Lg4/b$c;->b:I

    iget-object v9, v6, Lg4/b$c;->a:[B

    aput-byte v7, v9, v8

    add-int/lit8 v7, v8, 0x1

    and-int/2addr v7, v4

    iget-boolean v9, v6, Lg4/b$c;->c:Z

    if-nez v9, :cond_3

    if-ge v7, v8, :cond_3

    iput-boolean v5, v6, Lg4/b$c;->c:Z

    :cond_3
    iput v7, v6, Lg4/b$c;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_2
    iget-wide v1, p0, Lg4/b$f;->b:J

    int-to-long v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lg4/b$f;->b:J

    add-int/2addr v0, v5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "Truncated Deflate64 Stream"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return p3
.end method

.method public final d()Lg4/c;
    .locals 4

    iget-wide v0, p0, Lg4/b$f;->b:J

    iget-wide v2, p0, Lg4/b$f;->a:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object p0, Lg4/c;->r:Lg4/c;

    goto :goto_0

    :cond_0
    sget-object p0, Lg4/c;->c:Lg4/c;

    :goto_0
    return-object p0
.end method
