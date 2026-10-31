.class public final Lp0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lp0/c;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 52
    new-array v0, v0, [Lp0/c;

    iput-object v0, p0, Lp0/c;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lp0/c;->b:I

    .line 54
    iput v0, p0, Lp0/c;->c:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    .line 1
    iput p3, p0, Lp0/c;->a:I

    .line 2
    .line 3
    packed-switch p3, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput p1, p0, Lp0/c;->b:I

    .line 13
    .line 14
    and-int/lit8 p1, p2, 0x7

    .line 15
    .line 16
    if-nez p1, :cond_13

    .line 17
    .line 18
    const/16 p1, 0x8

    .line 19
    .line 20
    :cond_13
    iput p1, p0, Lp0/c;->c:I

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 p3, 0x2

    .line 27
    new-array p3, p3, [I

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput p1, p3, v0

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    aput p2, p3, v0

    .line 34
    .line 35
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, [[B

    .line 42
    .line 43
    iput-object p3, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 44
    .line 45
    iput p1, p0, Lp0/c;->b:I

    .line 46
    .line 47
    iput p2, p0, Lp0/c;->c:I

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Lp0/d;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lp0/c;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lp0/c;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lp0/c;->b:I

    .line 58
    invoke-virtual {p0}, Lp0/c;->b()V

    return-void
.end method


# virtual methods
.method public a(II)B
    .registers 4

    .line 1
    iget-object v0, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    aget-byte p1, p2, p1

    .line 8
    .line 9
    return p1
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp0/d;

    .line 4
    .line 5
    if-eqz v0, :cond_d

    .line 6
    .line 7
    iget v1, p0, Lp0/c;->c:I

    .line 8
    .line 9
    iget v2, p0, Lp0/c;->b:I

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lp0/d;->b(II)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public c(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [[B

    .line 4
    .line 5
    aget-object p2, v0, p2

    .line 6
    .line 7
    int-to-byte p3, p3

    .line 8
    aput-byte p3, p2, p1

    .line 9
    .line 10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 1
    iget v0, p0, Lp0/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Lp0/c;->b:I

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x2

    .line 16
    .line 17
    iget v3, p0, Lp0/c;->c:I

    .line 18
    .line 19
    mul-int/2addr v2, v3

    .line 20
    add-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move v4, v2

    .line 27
    :goto_1a
    if-ge v4, v3, :cond_48

    .line 28
    .line 29
    iget-object v5, p0, Lp0/c;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v5, [[B

    .line 32
    .line 33
    aget-object v5, v5, v4

    .line 34
    .line 35
    move v6, v2

    .line 36
    :goto_23
    if-ge v6, v1, :cond_40

    .line 37
    .line 38
    aget-byte v7, v5, v6

    .line 39
    .line 40
    if-eqz v7, :cond_38

    .line 41
    .line 42
    const/4 v8, 0x1

    .line 43
    if-eq v7, v8, :cond_32

    .line 44
    .line 45
    const-string v7, "  "

    .line 46
    .line 47
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_3d

    .line 51
    :cond_32
    const-string v7, " 1"

    .line 52
    .line 53
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_3d

    .line 57
    :cond_38
    const-string v7, " 0"

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_23

    .line 65
    :cond_40
    const/16 v5, 0xa

    .line 66
    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    goto :goto_1a

    .line 73
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    nop

    .line 79
    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_a
    .end packed-switch
.end method
