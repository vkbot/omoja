.class public abstract Le4/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public c:J


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Le4/a;->c:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-wide v2, p0, Le4/a;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Le4/a;->c:J

    :cond_0
    return-void
.end method
