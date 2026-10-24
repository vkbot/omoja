.class public final Lorg/apache/commons/compress/archivers/zip/q0$a;
.super Ln4/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b1:Lorg/apache/commons/compress/archivers/zip/q0;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/q0;Ljava/io/InputStream;J)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/q0$a;->b1:Lorg/apache/commons/compress/archivers/zip/q0;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p4, p1}, Ln4/a;-><init>(Ljava/io/InputStream;JZ)V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 6

    iget-wide v0, p0, Ln4/a;->x:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 1
    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-super {p0}, Ln4/a;->read()I

    move-result v0

    if-eq v0, v1, :cond_2

    int-to-long v1, v3

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$a;->b1:Lorg/apache/commons/compress/archivers/zip/q0;

    .line 3
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    .line 4
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    .line 5
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    :cond_2
    return v0
.end method

.method public final read([BII)I
    .locals 8

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-wide v0, p0, Ln4/a;->x:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_1

    .line 6
    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-ltz v4, :cond_1

    return v5

    :cond_1
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    int-to-long v2, p3

    .line 7
    invoke-virtual {p0}, Ln4/a;->d()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    int-to-long v0, p3

    :goto_0
    long-to-int p3, v0

    .line 8
    invoke-super {p0, p1, p2, p3}, Ln4/a;->read([BII)I

    move-result p1

    if-eq p1, v5, :cond_3

    int-to-long p2, p1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0$a;->b1:Lorg/apache/commons/compress/archivers/zip/q0;

    .line 9
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/archivers/b;->c(J)V

    .line 10
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/q0;->c1:Lorg/apache/commons/compress/archivers/zip/q0$b;

    .line 11
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/q0$b;->e:J

    :cond_3
    return p1
.end method
