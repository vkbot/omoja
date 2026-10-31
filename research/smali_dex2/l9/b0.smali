.class public final Ll9/b0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Ll9/b0;

.field public g:Ll9/b0;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 19
    new-array v0, v0, [B

    iput-object v0, p0, Ll9/b0;->a:[B

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Ll9/b0;->e:Z

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Ll9/b0;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ll9/b0;->a:[B

    .line 8
    .line 9
    iput p2, p0, Ll9/b0;->b:I

    .line 10
    .line 11
    iput p3, p0, Ll9/b0;->c:I

    .line 12
    .line 13
    iput-boolean p4, p0, Ll9/b0;->d:Z

    .line 14
    .line 15
    iput-boolean p5, p0, Ll9/b0;->e:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ll9/b0;
    .registers 5

    .line 1
    iget-object v0, p0, Ll9/b0;->f:Ll9/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_6

    .line 5
    .line 6
    goto :goto_7

    .line 7
    :cond_6
    move-object v0, v1

    .line 8
    :goto_7
    iget-object v2, p0, Ll9/b0;->g:Ll9/b0;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Ll9/b0;->f:Ll9/b0;

    .line 14
    .line 15
    iput-object v3, v2, Ll9/b0;->f:Ll9/b0;

    .line 16
    .line 17
    iget-object v2, p0, Ll9/b0;->f:Ll9/b0;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Ll9/b0;->g:Ll9/b0;

    .line 23
    .line 24
    iput-object v3, v2, Ll9/b0;->g:Ll9/b0;

    .line 25
    .line 26
    iput-object v1, p0, Ll9/b0;->f:Ll9/b0;

    .line 27
    .line 28
    iput-object v1, p0, Ll9/b0;->g:Ll9/b0;

    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Ll9/b0;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p0, p1, Ll9/b0;->g:Ll9/b0;

    .line 5
    .line 6
    iget-object v0, p0, Ll9/b0;->f:Ll9/b0;

    .line 7
    .line 8
    iput-object v0, p1, Ll9/b0;->f:Ll9/b0;

    .line 9
    .line 10
    iget-object v0, p0, Ll9/b0;->f:Ll9/b0;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Ll9/b0;->g:Ll9/b0;

    .line 16
    .line 17
    iput-object p1, p0, Ll9/b0;->f:Ll9/b0;

    .line 18
    .line 19
    return-void
.end method

.method public final c()Ll9/b0;
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll9/b0;->d:Z

    .line 3
    .line 4
    new-instance v1, Ll9/b0;

    .line 5
    .line 6
    iget v3, p0, Ll9/b0;->b:I

    .line 7
    .line 8
    iget v4, p0, Ll9/b0;->c:I

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v2, p0, Ll9/b0;->a:[B

    .line 13
    .line 14
    invoke-direct/range {v1 .. v6}, Ll9/b0;-><init>([BIIZZ)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final d(Ll9/b0;I)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ll9/b0;->a:[B

    .line 5
    .line 6
    iget-boolean v1, p1, Ll9/b0;->e:Z

    .line 7
    .line 8
    if-eqz v1, :cond_46

    .line 9
    .line 10
    iget v1, p1, Ll9/b0;->c:I

    .line 11
    .line 12
    add-int v2, v1, p2

    .line 13
    .line 14
    const/16 v3, 0x2000

    .line 15
    .line 16
    if-le v2, v3, :cond_30

    .line 17
    .line 18
    iget-boolean v4, p1, Ll9/b0;->d:Z

    .line 19
    .line 20
    if-nez v4, :cond_2c

    .line 21
    .line 22
    iget v4, p1, Ll9/b0;->b:I

    .line 23
    .line 24
    sub-int/2addr v2, v4

    .line 25
    if-gt v2, v3, :cond_28

    .line 26
    .line 27
    invoke-static {v0, v0, v4, v1}, Lkotlin/collections/ArraysKt;->o([B[BII)V

    .line 28
    .line 29
    .line 30
    iget v1, p1, Ll9/b0;->c:I

    .line 31
    .line 32
    iget v2, p1, Ll9/b0;->b:I

    .line 33
    .line 34
    sub-int/2addr v1, v2

    .line 35
    iput v1, p1, Ll9/b0;->c:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p1, Ll9/b0;->b:I

    .line 39
    .line 40
    goto :goto_30

    .line 41
    :cond_28
    invoke-static {}, Ll9/i;->a()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-static {}, Ll9/i;->a()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    :goto_30
    iget v1, p1, Ll9/b0;->c:I

    .line 50
    .line 51
    iget v2, p0, Ll9/b0;->b:I

    .line 52
    .line 53
    add-int v3, v2, p2

    .line 54
    .line 55
    iget-object v4, p0, Ll9/b0;->a:[B

    .line 56
    .line 57
    invoke-static {v4, v0, v1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 58
    .line 59
    .line 60
    iget v0, p1, Ll9/b0;->c:I

    .line 61
    .line 62
    add-int/2addr v0, p2

    .line 63
    iput v0, p1, Ll9/b0;->c:I

    .line 64
    .line 65
    iget p1, p0, Ll9/b0;->b:I

    .line 66
    .line 67
    add-int/2addr p1, p2

    .line 68
    iput p1, p0, Ll9/b0;->b:I

    .line 69
    .line 70
    return-void

    .line 71
    :cond_46
    const-string p1, "only owner can write"

    .line 72
    .line 73
    invoke-static {p1}, Lj1/i;->l(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
