.class public final Ll9/a0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ll9/n;


# instance fields
.field public final b:Ll9/g0;

.field public final c:Ll9/l;

.field public d:Z


# direct methods
.method public constructor <init>(Ll9/g0;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll9/a0;->b:Ll9/g0;

    .line 8
    .line 9
    new-instance p1, Ll9/l;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ll9/a0;->c:Ll9/l;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final D(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 5
    .line 6
    iget-object v1, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ll9/l;->G(Ll9/g0;)J

    .line 9
    .line 10
    .line 11
    iget-wide v2, v1, Ll9/l;->c:J

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, p1}, Ll9/l;->g0(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final J()Ll9/o;
    .registers 5

    .line 1
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 2
    .line 3
    iget-object v1, p0, Ll9/a0;->c:Ll9/l;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ll9/l;->G(Ll9/g0;)J

    .line 6
    .line 7
    .line 8
    iget-wide v2, v1, Ll9/l;->c:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Ll9/l;->f(J)Ll9/o;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 3

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Ll9/a0;->p(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final P(Ll9/w;)I
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_30

    .line 7
    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Ll9/a0;->c:Ll9/l;

    .line 10
    .line 11
    invoke-static {v1, p1, v0}, Lm9/a;->c(Ll9/l;Ll9/w;Z)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, -0x2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v0, v2, :cond_21

    .line 18
    .line 19
    if-eq v0, v3, :cond_2f

    .line 20
    .line 21
    iget-object p1, p1, Ll9/w;->b:[Ll9/o;

    .line 22
    .line 23
    aget-object p1, p1, v0

    .line 24
    .line 25
    invoke-virtual {p1}, Ll9/o;->c()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-long v2, p1

    .line 30
    invoke-virtual {v1, v2, v3}, Ll9/l;->skip(J)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_21
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 35
    .line 36
    const-wide/16 v4, 0x2000

    .line 37
    .line 38
    invoke-interface {v0, v1, v4, v5}, Ll9/g0;->read(Ll9/l;J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v4, -0x1

    .line 43
    .line 44
    cmp-long v0, v0, v4

    .line 45
    .line 46
    if-nez v0, :cond_7

    .line 47
    .line 48
    :cond_2f
    return v3

    .line 49
    :cond_30
    const-string p1, "closed"

    .line 50
    .line 51
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public final Q(JLl9/o;)Z
    .registers 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ll9/o;->c()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-boolean p2, p0, Ll9/a0;->d:Z

    .line 9
    .line 10
    if-nez p2, :cond_36

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-ltz p1, :cond_35

    .line 14
    .line 15
    invoke-virtual {p3}, Ll9/o;->c()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge v0, p1, :cond_15

    .line 20
    .line 21
    goto :goto_35

    .line 22
    :cond_15
    move v0, p2

    .line 23
    :goto_16
    if-ge v0, p1, :cond_33

    .line 24
    .line 25
    int-to-long v1, v0

    .line 26
    const-wide/16 v3, 0x1

    .line 27
    .line 28
    add-long/2addr v3, v1

    .line 29
    invoke-virtual {p0, v3, v4}, Ll9/a0;->d(J)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_23

    .line 34
    .line 35
    goto :goto_35

    .line 36
    :cond_23
    iget-object v3, p0, Ll9/a0;->c:Ll9/l;

    .line 37
    .line 38
    invoke-virtual {v3, v1, v2}, Ll9/l;->V(J)B

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p3, v0}, Ll9/o;->f(I)B

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v1, v2, :cond_30

    .line 47
    .line 48
    goto :goto_35

    .line 49
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_16

    .line 52
    :cond_33
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_35
    :goto_35
    return p2

    .line 55
    :cond_36
    const-string p1, "closed"

    .line 56
    .line 57
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    return p1
.end method

.method public final Y(J)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Ll9/a0;->d(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final a()Ll9/l;
    .registers 2

    .line 1
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 2
    .line 3
    return-object v0
.end method

.method public final a0()J
    .registers 7

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_6
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    int-to-long v2, v1

    .line 10
    invoke-virtual {p0, v2, v3}, Ll9/a0;->d(J)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Ll9/a0;->c:Ll9/l;

    .line 15
    .line 16
    if-eqz v2, :cond_51

    .line 17
    .line 18
    int-to-long v4, v0

    .line 19
    invoke-virtual {v3, v4, v5}, Ll9/l;->V(J)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    if-lt v2, v4, :cond_1e

    .line 26
    .line 27
    const/16 v4, 0x39

    .line 28
    .line 29
    if-le v2, v4, :cond_2f

    .line 30
    .line 31
    :cond_1e
    const/16 v4, 0x61

    .line 32
    .line 33
    if-lt v2, v4, :cond_26

    .line 34
    .line 35
    const/16 v4, 0x66

    .line 36
    .line 37
    if-le v2, v4, :cond_2f

    .line 38
    .line 39
    :cond_26
    const/16 v4, 0x41

    .line 40
    .line 41
    if-lt v2, v4, :cond_31

    .line 42
    .line 43
    const/16 v4, 0x46

    .line 44
    .line 45
    if-le v2, v4, :cond_2f

    .line 46
    .line 47
    goto :goto_31

    .line 48
    :cond_2f
    move v0, v1

    .line 49
    goto :goto_6

    .line 50
    :cond_31
    :goto_31
    if-eqz v0, :cond_34

    .line 51
    .line 52
    goto :goto_51

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_51
    :goto_51
    invoke-virtual {v3}, Ll9/l;->a0()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    return-wide v0
.end method

.method public final b(JJB)J
    .registers 15

    .line 1
    iget-boolean p1, p0, Ll9/a0;->d:Z

    .line 2
    .line 3
    if-nez p1, :cond_46

    .line 4
    .line 5
    const-wide/16 p1, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, p3

    .line 8
    .line 9
    if-gtz v0, :cond_39

    .line 10
    .line 11
    move-wide v2, p1

    .line 12
    :goto_b
    cmp-long p1, v2, p3

    .line 13
    .line 14
    const-wide/16 v7, -0x1

    .line 15
    .line 16
    if-gez p1, :cond_38

    .line 17
    .line 18
    iget-object v1, p0, Ll9/a0;->c:Ll9/l;

    .line 19
    .line 20
    move-wide v4, p3

    .line 21
    move v6, p5

    .line 22
    invoke-virtual/range {v1 .. v6}, Ll9/l;->c0(JJB)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    cmp-long p3, p1, v7

    .line 27
    .line 28
    if-eqz p3, :cond_1e

    .line 29
    .line 30
    return-wide p1

    .line 31
    :cond_1e
    iget-wide p1, v1, Ll9/l;->c:J

    .line 32
    .line 33
    cmp-long p3, p1, v4

    .line 34
    .line 35
    if-gez p3, :cond_38

    .line 36
    .line 37
    iget-object p3, p0, Ll9/a0;->b:Ll9/g0;

    .line 38
    .line 39
    const-wide/16 p4, 0x2000

    .line 40
    .line 41
    invoke-interface {p3, v1, p4, p5}, Ll9/g0;->read(Ll9/l;J)J

    .line 42
    .line 43
    .line 44
    move-result-wide p3

    .line 45
    cmp-long p3, p3, v7

    .line 46
    .line 47
    if-nez p3, :cond_31

    .line 48
    .line 49
    goto :goto_38

    .line 50
    :cond_31
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    move-wide p3, v4

    .line 55
    move p5, v6

    .line 56
    goto :goto_b

    .line 57
    :cond_38
    :goto_38
    return-wide v7

    .line 58
    :cond_39
    move-wide v4, p3

    .line 59
    const-string p1, "fromIndex=0 toIndex="

    .line 60
    .line 61
    invoke-static {v4, v5, p1}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_43
    const-wide/16 p1, 0x0

    .line 69
    .line 70
    return-wide p1

    .line 71
    :cond_46
    const-string p1, "closed"

    .line 72
    .line 73
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_43
.end method

.method public final b0()Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance v0, Ll9/k;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Ll9/k;-><init>(Ll9/n;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final c()I
    .registers 4

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/l;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, -0x1000000

    .line 13
    .line 14
    and-int/2addr v1, v0

    .line 15
    ushr-int/lit8 v1, v1, 0x18

    .line 16
    .line 17
    const/high16 v2, 0xff0000

    .line 18
    .line 19
    and-int/2addr v2, v0

    .line 20
    ushr-int/lit8 v2, v2, 0x8

    .line 21
    .line 22
    or-int/2addr v1, v2

    .line 23
    const v2, 0xff00

    .line 24
    .line 25
    .line 26
    and-int/2addr v2, v0

    .line 27
    shl-int/lit8 v2, v2, 0x8

    .line 28
    .line 29
    or-int/2addr v1, v2

    .line 30
    and-int/lit16 v0, v0, 0xff

    .line 31
    .line 32
    shl-int/lit8 v0, v0, 0x18

    .line 33
    .line 34
    or-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public final close()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_11

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ll9/a0;->d:Z

    .line 7
    .line 8
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 14
    .line 15
    invoke-virtual {v0}, Ll9/l;->b()V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final d(J)Z
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_2b

    .line 6
    .line 7
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 8
    .line 9
    if-nez v0, :cond_24

    .line 10
    .line 11
    :cond_a
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 12
    .line 13
    iget-wide v1, v0, Ll9/l;->c:J

    .line 14
    .line 15
    cmp-long v1, v1, p1

    .line 16
    .line 17
    if-gez v1, :cond_22

    .line 18
    .line 19
    iget-object v1, p0, Ll9/a0;->b:Ll9/g0;

    .line 20
    .line 21
    const-wide/16 v2, 0x2000

    .line 22
    .line 23
    invoke-interface {v1, v0, v2, v3}, Ll9/g0;->read(Ll9/l;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-nez v0, :cond_a

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_24
    const-string p1, "closed"

    .line 38
    .line 39
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_29
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_2b
    const-string v0, "byteCount < 0: "

    .line 45
    .line 46
    invoke-static {p1, p2, v0}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_29
.end method

.method public final f(J)Ll9/o;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2}, Ll9/a0;->Y(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ll9/l;->f(J)Ll9/o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final isOpen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final j()[B
    .registers 5

    .line 1
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 2
    .line 3
    iget-object v1, p0, Ll9/a0;->c:Ll9/l;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ll9/l;->G(Ll9/g0;)J

    .line 6
    .line 7
    .line 8
    iget-wide v2, v1, Ll9/l;->c:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Ll9/l;->f0(J)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final k()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1e

    .line 4
    .line 5
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Ll9/l;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1c

    .line 12
    .line 13
    iget-object v1, p0, Ll9/a0;->b:Ll9/g0;

    .line 14
    .line 15
    const-wide/16 v2, 0x2000

    .line 16
    .line 17
    invoke-interface {v1, v0, v2, v3}, Ll9/g0;->read(Ll9/l;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-nez v0, :cond_1c

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_1c
    const/4 v0, 0x0

    .line 30
    return v0

    .line 31
    :cond_1e
    const-string v0, "closed"

    .line 32
    .line 33
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public final o()J
    .registers 12

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v4, v2

    .line 9
    :goto_8
    add-long v6, v4, v0

    .line 10
    .line 11
    invoke-virtual {p0, v6, v7}, Ll9/a0;->d(J)Z

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    iget-object v9, p0, Ll9/a0;->c:Ll9/l;

    .line 16
    .line 17
    if-eqz v8, :cond_49

    .line 18
    .line 19
    invoke-virtual {v9, v4, v5}, Ll9/l;->V(J)B

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/16 v10, 0x30

    .line 24
    .line 25
    if-lt v8, v10, :cond_1e

    .line 26
    .line 27
    const/16 v10, 0x39

    .line 28
    .line 29
    if-le v8, v10, :cond_27

    .line 30
    .line 31
    :cond_1e
    cmp-long v4, v4, v2

    .line 32
    .line 33
    if-nez v4, :cond_29

    .line 34
    .line 35
    const/16 v5, 0x2d

    .line 36
    .line 37
    if-eq v8, v5, :cond_27

    .line 38
    .line 39
    goto :goto_29

    .line 40
    :cond_27
    move-wide v4, v6

    .line 41
    goto :goto_8

    .line 42
    :cond_29
    :goto_29
    if-eqz v4, :cond_2c

    .line 43
    .line 44
    goto :goto_49

    .line 45
    :cond_2c
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 46
    .line 47
    const/16 v1, 0x10

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string v2, "Expected a digit or \'-\' but was 0x"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_49
    :goto_49
    invoke-virtual {v9}, Ll9/l;->o()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    return-wide v0
.end method

.method public final p(J)Ljava/lang/String;
    .registers 21

    .line 1
    move-wide/from16 v6, p1

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, v6, v0

    .line 6
    .line 7
    if-ltz v0, :cond_9c

    .line 8
    .line 9
    const-wide v8, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v0, v6, v8

    .line 15
    .line 16
    const-wide/16 v10, 0x1

    .line 17
    .line 18
    if-nez v0, :cond_15

    .line 19
    .line 20
    move-wide v3, v8

    .line 21
    goto :goto_18

    .line 22
    :cond_15
    add-long v0, v6, v10

    .line 23
    .line 24
    move-wide v3, v0

    .line 25
    :goto_18
    const/16 v5, 0xa

    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    move-object/from16 v0, p0

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v5}, Ll9/a0;->b(JJB)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    const-wide/16 v12, -0x1

    .line 36
    .line 37
    cmp-long v5, v1, v12

    .line 38
    .line 39
    iget-object v12, v0, Ll9/a0;->c:Ll9/l;

    .line 40
    .line 41
    if-eqz v5, :cond_2f

    .line 42
    .line 43
    invoke-static {v12, v1, v2}, Lm9/a;->b(Ll9/l;J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    return-object v1

    .line 48
    :cond_2f
    cmp-long v1, v3, v8

    .line 49
    .line 50
    if-gez v1, :cond_58

    .line 51
    .line 52
    invoke-virtual {v0, v3, v4}, Ll9/a0;->d(J)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_58

    .line 57
    .line 58
    sub-long v1, v3, v10

    .line 59
    .line 60
    invoke-virtual {v12, v1, v2}, Ll9/l;->V(J)B

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/16 v2, 0xd

    .line 65
    .line 66
    if-ne v1, v2, :cond_58

    .line 67
    .line 68
    add-long v1, v3, v10

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ll9/a0;->d(J)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_58

    .line 75
    .line 76
    invoke-virtual {v12, v3, v4}, Ll9/l;->V(J)B

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/16 v2, 0xa

    .line 81
    .line 82
    if-ne v1, v2, :cond_58

    .line 83
    .line 84
    invoke-static {v12, v3, v4}, Lm9/a;->b(Ll9/l;J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    return-object v1

    .line 89
    :cond_58
    new-instance v15, Ll9/l;

    .line 90
    .line 91
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-wide v1, v12, Ll9/l;->c:J

    .line 95
    .line 96
    const/16 v3, 0x20

    .line 97
    .line 98
    int-to-long v3, v3

    .line 99
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 100
    .line 101
    .line 102
    move-result-wide v16

    .line 103
    const-wide/16 v13, 0x0

    .line 104
    .line 105
    invoke-virtual/range {v12 .. v17}, Ll9/l;->S(JLl9/l;J)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/io/EOFException;

    .line 109
    .line 110
    iget-wide v2, v12, Ll9/l;->c:J

    .line 111
    .line 112
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    iget-wide v4, v15, Ll9/l;->c:J

    .line 117
    .line 118
    invoke-virtual {v15, v4, v5}, Ll9/l;->f(J)Ll9/o;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ll9/o;->d()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v6, "\\n not found: limit="

    .line 129
    .line 130
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v2, " content="

    .line 137
    .line 138
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const/16 v2, 0x2026

    .line 145
    .line 146
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_9c
    move-object/from16 v0, p0

    .line 158
    .line 159
    const-string v1, "limit < 0: "

    .line 160
    .line 161
    invoke-static {v6, v7, v1}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x0

    .line 169
    return-object v1
.end method

.method public final peek()Ll9/a0;
    .registers 3

    .line 1
    new-instance v0, Ll9/y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ll9/y;-><init>(Ll9/n;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ll9/a0;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ll9/a0;-><init>(Ll9/g0;)V

    .line 9
    .line 10
    .line 11
    return-object v1
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    iget-wide v1, v0, Ll9/l;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 69
    iget-object v1, p0, Ll9/a0;->b:Ll9/g0;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Ll9/g0;->read(Ll9/l;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    const/4 p1, -0x1

    return p1

    .line 70
    :cond_1d
    invoke-virtual {v0, p1}, Ll9/l;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Ll9/l;J)J
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-ltz v2, :cond_37

    .line 9
    .line 10
    iget-boolean v2, p0, Ll9/a0;->d:Z

    .line 11
    .line 12
    if-nez v2, :cond_2f

    .line 13
    .line 14
    iget-object v2, p0, Ll9/a0;->c:Ll9/l;

    .line 15
    .line 16
    iget-wide v3, v2, Ll9/l;->c:J

    .line 17
    .line 18
    cmp-long v0, v3, v0

    .line 19
    .line 20
    if-nez v0, :cond_24

    .line 21
    .line 22
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 23
    .line 24
    const-wide/16 v3, 0x2000

    .line 25
    .line 26
    invoke-interface {v0, v2, v3, v4}, Ll9/g0;->read(Ll9/l;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v3, -0x1

    .line 31
    .line 32
    cmp-long v0, v0, v3

    .line 33
    .line 34
    if-nez v0, :cond_24

    .line 35
    .line 36
    return-wide v3

    .line 37
    :cond_24
    iget-wide v0, v2, Ll9/l;->c:J

    .line 38
    .line 39
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    invoke-virtual {v2, p1, p2, p3}, Ll9/l;->read(Ll9/l;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    return-wide p1

    .line 48
    :cond_2f
    const-string p1, "closed"

    .line 49
    .line 50
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 p1, 0x0

    .line 54
    .line 55
    return-wide p1

    .line 56
    :cond_37
    const-string p1, "byteCount < 0: "

    .line 57
    .line 58
    invoke-static {p2, p3, p1}, Lai/onnxruntime/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ll9/i;->d(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 p1, 0x0

    .line 66
    .line 67
    return-wide p1
.end method

.method public final readByte()B
    .registers 3

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/l;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final readFully([B)V
    .registers 9

    .line 1
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_5
    array-length v1, p1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {p0, v1, v2}, Ll9/a0;->Y(J)V
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_a} :catch_e

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ll9/l;->readFully([B)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_e
    move-exception v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    iget-wide v3, v0, Ll9/l;->c:J

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v5, v3, v5

    .line 22
    .line 23
    if-lez v5, :cond_28

    .line 24
    .line 25
    long-to-int v3, v3

    .line 26
    invoke-virtual {v0, p1, v2, v3}, Ll9/l;->read([BII)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    if-eq v3, v4, :cond_22

    .line 32
    .line 33
    add-int/2addr v2, v3

    .line 34
    goto :goto_10

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/AssertionError;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_28
    throw v1
.end method

.method public final readInt()I
    .registers 3

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/l;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final readLong()J
    .registers 3

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/l;->readLong()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final readShort()S
    .registers 3

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Ll9/a0;->Y(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll9/l;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final skip(J)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Ll9/a0;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_33

    .line 4
    .line 5
    :goto_4
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_32

    .line 10
    .line 11
    iget-object v2, p0, Ll9/a0;->c:Ll9/l;

    .line 12
    .line 13
    iget-wide v3, v2, Ll9/l;->c:J

    .line 14
    .line 15
    cmp-long v0, v3, v0

    .line 16
    .line 17
    if-nez v0, :cond_27

    .line 18
    .line 19
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 20
    .line 21
    const-wide/16 v3, 0x2000

    .line 22
    .line 23
    invoke-interface {v0, v2, v3, v4}, Ll9/g0;->read(Ll9/l;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v3, -0x1

    .line 28
    .line 29
    cmp-long v0, v0, v3

    .line 30
    .line 31
    if-eqz v0, :cond_21

    .line 32
    .line 33
    goto :goto_27

    .line 34
    :cond_21
    new-instance p1, Ljava/io/EOFException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_27
    :goto_27
    iget-wide v0, v2, Ll9/l;->c:J

    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {v2, v0, v1}, Ll9/l;->skip(J)V

    .line 47
    .line 48
    .line 49
    sub-long/2addr p1, v0

    .line 50
    goto :goto_4

    .line 51
    :cond_32
    return-void

    .line 52
    :cond_33
    const-string p1, "closed"

    .line 53
    .line 54
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final t(Ll9/l;J)V
    .registers 5

    .line 1
    iget-object v0, p0, Ll9/a0;->c:Ll9/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p0, p2, p3}, Ll9/a0;->Y(J)V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_8} :catch_c

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ll9/l;->t(Ll9/l;J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_c
    move-exception p2

    .line 14
    invoke-virtual {p1, v0}, Ll9/l;->G(Ll9/g0;)J

    .line 15
    .line 16
    .line 17
    throw p2
.end method

.method public final timeout()Ll9/j0;
    .registers 2

    .line 1
    iget-object v0, p0, Ll9/a0;->b:Ll9/g0;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/g0;->timeout()Ll9/j0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ll9/a0;->b:Ll9/g0;

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
