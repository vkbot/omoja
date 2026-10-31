.class public final Ll9/x;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/e0;


# instance fields
.field public final b:Ljava/io/OutputStream;

.field public final c:Ll9/j0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ll9/j0;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll9/x;->b:Ljava/io/OutputStream;

    .line 8
    .line 9
    iput-object p2, p0, Ll9/x;->c:Ll9/j0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll9/x;->b:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .registers 2

    .line 1
    iget-object v0, p0, Ll9/x;->b:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final timeout()Ll9/j0;
    .registers 2

    .line 1
    iget-object v0, p0, Ll9/x;->c:Ll9/j0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sink("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll9/x;->b:Ljava/io/OutputStream;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final write(Ll9/l;J)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Ll9/l;->c:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v4, p2

    .line 9
    invoke-static/range {v0 .. v5}, Ll9/b;->d(JJJ)V

    .line 10
    .line 11
    .line 12
    :cond_b
    :goto_b
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-lez v0, :cond_49

    .line 17
    .line 18
    iget-object v0, p0, Ll9/x;->c:Ll9/j0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ll9/j0;->throwIfReached()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Ll9/l;->b:Ll9/b0;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget v1, v0, Ll9/b0;->c:I

    .line 29
    .line 30
    iget v2, v0, Ll9/b0;->b:I

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    int-to-long v1, v1

    .line 34
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    long-to-int v1, v1

    .line 39
    iget-object v2, v0, Ll9/b0;->a:[B

    .line 40
    .line 41
    iget v3, v0, Ll9/b0;->b:I

    .line 42
    .line 43
    iget-object v4, p0, Ll9/x;->b:Ljava/io/OutputStream;

    .line 44
    .line 45
    invoke-virtual {v4, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    .line 47
    .line 48
    iget v2, v0, Ll9/b0;->b:I

    .line 49
    .line 50
    add-int/2addr v2, v1

    .line 51
    iput v2, v0, Ll9/b0;->b:I

    .line 52
    .line 53
    int-to-long v3, v1

    .line 54
    sub-long/2addr p2, v3

    .line 55
    iget-wide v5, p1, Ll9/l;->c:J

    .line 56
    .line 57
    sub-long/2addr v5, v3

    .line 58
    iput-wide v5, p1, Ll9/l;->c:J

    .line 59
    .line 60
    iget v1, v0, Ll9/b0;->c:I

    .line 61
    .line 62
    if-ne v2, v1, :cond_b

    .line 63
    .line 64
    invoke-virtual {v0}, Ll9/b0;->a()Ll9/b0;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iput-object v1, p1, Ll9/l;->b:Ll9/b0;

    .line 69
    .line 70
    invoke-static {v0}, Ll9/c0;->a(Ll9/b0;)V

    .line 71
    .line 72
    .line 73
    goto :goto_b

    .line 74
    :cond_49
    return-void
.end method
