.class public final Lo7/b0;
.super Lo7/c;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final f:Lo7/u2;

.field public static final g:Lo7/u2;

.field public static final h:Lo7/u2;

.field public static final i:Lo7/u2;

.field public static final j:Lo7/u2;


# instance fields
.field public final b:Ljava/util/ArrayDeque;

.field public c:Ljava/util/ArrayDeque;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lo7/u2;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lo7/b0;->f:Lo7/u2;

    .line 8
    .line 9
    new-instance v0, Lo7/u2;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lo7/b0;->g:Lo7/u2;

    .line 16
    .line 17
    new-instance v0, Lo7/u2;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lo7/b0;->h:Lo7/u2;

    .line 24
    .line 25
    new-instance v0, Lo7/u2;

    .line 26
    .line 27
    const/4 v1, 0x7

    .line 28
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lo7/b0;->i:Lo7/u2;

    .line 32
    .line 33
    new-instance v0, Lo7/u2;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lo7/u2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lo7/b0;->j:Lo7/u2;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final S(I)Lo7/c;
    .registers 9

    .line 1
    if-gtz p1, :cond_5

    .line 2
    .line 3
    sget-object p1, Lo7/k3;->a:Lo7/j3;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Lo7/c;->b(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lo7/b0;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, p1

    .line 12
    iput v0, p0, Lo7/b0;->d:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move-object v1, v0

    .line 16
    :goto_f
    iget-object v2, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lo7/c;

    .line 23
    .line 24
    invoke-virtual {v3}, Lo7/c;->f0()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-le v4, p1, :cond_23

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lo7/c;->S(I)Lo7/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v3, 0x0

    .line 35
    goto :goto_39

    .line 36
    :cond_23
    iget-boolean v5, p0, Lo7/b0;->e:Z

    .line 37
    .line 38
    if-eqz v5, :cond_2f

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lo7/c;->S(I)Lo7/c;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lo7/b0;->j0()V

    .line 45
    .line 46
    .line 47
    goto :goto_35

    .line 48
    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lo7/c;

    .line 53
    .line 54
    :goto_35
    sub-int/2addr p1, v4

    .line 55
    move-object v6, v3

    .line 56
    move v3, p1

    .line 57
    move-object p1, v6

    .line 58
    :goto_39
    if-nez v0, :cond_3d

    .line 59
    .line 60
    move-object v0, p1

    .line 61
    goto :goto_5a

    .line 62
    :cond_3d
    if-nez v1, :cond_57

    .line 63
    .line 64
    new-instance v1, Lo7/b0;

    .line 65
    .line 66
    const/4 v4, 0x2

    .line 67
    if-nez v3, :cond_45

    .line 68
    .line 69
    goto :goto_50

    .line 70
    :cond_45
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr v2, v4

    .line 75
    const/16 v4, 0x10

    .line 76
    .line 77
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    :goto_50
    invoke-direct {v1, v4}, Lo7/b0;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lo7/b0;->i0(Lo7/c;)V

    .line 85
    .line 86
    .line 87
    move-object v0, v1

    .line 88
    :cond_57
    invoke-virtual {v1, p1}, Lo7/b0;->i0(Lo7/c;)V

    .line 89
    .line 90
    .line 91
    :goto_5a
    if-gtz v3, :cond_5d

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_5d
    move p1, v3

    .line 95
    goto :goto_f
.end method

.method public final V(Ljava/io/OutputStream;I)V
    .registers 5

    .line 1
    sget-object v0, Lo7/b0;->j:Lo7/u2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p2, p1, v1}, Lo7/b0;->k0(Lo7/a0;ILjava/lang/Object;I)I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final c()V
    .registers 5

    .line 1
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    iget-object v1, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    if-nez v0, :cond_17

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    :cond_17
    :goto_17
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2b

    .line 31
    .line 32
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lo7/c;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 41
    .line 42
    .line 43
    goto :goto_17

    .line 44
    :cond_2b
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lo7/b0;->e:Z

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lo7/c;

    .line 52
    .line 53
    if-eqz v0, :cond_39

    .line 54
    .line 55
    invoke-virtual {v0}, Lo7/c;->c()V

    .line 56
    .line 57
    .line 58
    :cond_39
    return-void
.end method

.method public final c0(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lo7/b0;->i:Lo7/u2;

    .line 7
    .line 8
    invoke-virtual {p0, v2, v0, p1, v1}, Lo7/b0;->l0(Lo7/u2;ILjava/lang/Object;I)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final close()V
    .registers 3

    .line 1
    :goto_0
    iget-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_12

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lo7/c;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_12
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    if-eqz v0, :cond_2a

    .line 22
    .line 23
    :goto_16
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2a

    .line 30
    .line 31
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lo7/c;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 40
    .line 41
    .line 42
    goto :goto_16

    .line 43
    :cond_2a
    return-void
.end method

.method public final d0([BII)V
    .registers 5

    .line 1
    sget-object v0, Lo7/b0;->h:Lo7/u2;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p3, p1, p2}, Lo7/b0;->l0(Lo7/u2;ILjava/lang/Object;I)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e0()I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lo7/b0;->f:Lo7/u2;

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual {p0, v2, v3, v0, v1}, Lo7/b0;->l0(Lo7/u2;ILjava/lang/Object;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final f0()I
    .registers 2

    .line 1
    iget v0, p0, Lo7/b0;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final g0()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lo7/b0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3a

    .line 4
    .line 5
    iget-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lo7/c;

    .line 12
    .line 13
    if-eqz v1, :cond_1f

    .line 14
    .line 15
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Lo7/c;->g0()V

    .line 20
    .line 21
    .line 22
    iget v3, p0, Lo7/b0;->d:I

    .line 23
    .line 24
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v1, v2

    .line 29
    add-int/2addr v1, v3

    .line 30
    iput v1, p0, Lo7/b0;->d:I

    .line 31
    .line 32
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lo7/c;

    .line 39
    .line 40
    if-eqz v1, :cond_39

    .line 41
    .line 42
    invoke-virtual {v1}, Lo7/c;->g0()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lo7/b0;->d:I

    .line 49
    .line 50
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v1, v2

    .line 55
    iput v1, p0, Lo7/b0;->d:I

    .line 56
    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    return-void

    .line 59
    :cond_3a
    new-instance v0, Ljava/nio/InvalidMarkException;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public final h0(I)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lo7/b0;->g:Lo7/u2;

    .line 4
    .line 5
    invoke-virtual {p0, v2, p1, v0, v1}, Lo7/b0;->l0(Lo7/u2;ILjava/lang/Object;I)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i0(Lo7/c;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lo7/b0;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_f

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    instance-of v3, p1, Lo7/b0;

    .line 18
    .line 19
    if-nez v3, :cond_21

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lo7/b0;->d:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lo7/c;->f0()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    add-int/2addr p1, v1

    .line 31
    iput p1, p0, Lo7/b0;->d:I

    .line 32
    .line 33
    goto :goto_41

    .line 34
    :cond_21
    check-cast p1, Lo7/b0;

    .line 35
    .line 36
    iget-object v3, p1, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    :goto_25
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_35

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lo7/c;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_25

    .line 54
    :cond_35
    iget v3, p0, Lo7/b0;->d:I

    .line 55
    .line 56
    iget v4, p1, Lo7/b0;->d:I

    .line 57
    .line 58
    add-int/2addr v3, v4

    .line 59
    iput v3, p0, Lo7/b0;->d:I

    .line 60
    .line 61
    iput v1, p1, Lo7/b0;->d:I

    .line 62
    .line 63
    invoke-virtual {p1}, Lo7/b0;->close()V

    .line 64
    .line 65
    .line 66
    :goto_41
    if-eqz v0, :cond_4c

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lo7/c;

    .line 73
    .line 74
    invoke-virtual {p1}, Lo7/c;->c()V

    .line 75
    .line 76
    .line 77
    :cond_4c
    return-void
.end method

.method public final j0()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lo7/b0;->e:Z

    .line 2
    .line 3
    iget-object v1, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    if-eqz v0, :cond_1d

    .line 6
    .line 7
    iget-object v0, p0, Lo7/b0;->c:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lo7/c;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lo7/c;

    .line 23
    .line 24
    if-eqz v0, :cond_1c

    .line 25
    .line 26
    invoke-virtual {v0}, Lo7/c;->c()V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void

    .line 30
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lo7/c;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final k0(Lo7/a0;ILjava/lang/Object;I)I
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Lo7/c;->b(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1a

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lo7/c;

    .line 17
    .line 18
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p0}, Lo7/b0;->j0()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    :goto_1a
    if-lez p2, :cond_4a

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_4a

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lo7/c;

    .line 40
    .line 41
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-interface {p1, v1, v2, p3, p4}, Lo7/a0;->l(Lo7/c;ILjava/lang/Object;I)I

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    sub-int/2addr p2, v2

    .line 54
    iget v1, p0, Lo7/b0;->d:I

    .line 55
    .line 56
    sub-int/2addr v1, v2

    .line 57
    iput v1, p0, Lo7/b0;->d:I

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lo7/c;

    .line 64
    .line 65
    invoke-virtual {v1}, Lo7/c;->f0()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1a

    .line 70
    .line 71
    invoke-virtual {p0}, Lo7/b0;->j0()V

    .line 72
    .line 73
    .line 74
    goto :goto_1a

    .line 75
    :cond_4a
    if-gtz p2, :cond_4d

    .line 76
    .line 77
    return p4

    .line 78
    :cond_4d
    const-string p1, "Failed executing read operation"

    .line 79
    .line 80
    invoke-static {p1}, Lj1/i;->e(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    return p1
.end method

.method public final l0(Lo7/u2;ILjava/lang/Object;I)I
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lo7/b0;->k0(Lo7/a0;ILjava/lang/Object;I)I

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    move-exception p1

    .line 7
    invoke-static {p1}, Lj1/i;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final y()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lo7/b0;->b:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lo7/c;

    .line 18
    .line 19
    invoke-virtual {v1}, Lo7/c;->y()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_6

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    return v0
.end method
