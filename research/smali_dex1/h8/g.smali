.class public final Lh8/g;
.super Lh8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public final e:I

.field public final f:I

.field public final g:Lb8/c;


# direct methods
.method public constructor <init>(Lh8/a0;Lf5/q;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lh8/g;->d:I

    .line 17
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 18
    iput-object p2, p0, Lh8/g;->g:Lb8/c;

    const/4 p1, 0x2

    .line 19
    iput p1, p0, Lh8/g;->e:I

    const/4 p1, 0x1

    .line 20
    iput p1, p0, Lh8/g;->f:I

    return-void
.end method

.method public constructor <init>(Lh8/l;I)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lh8/g;->d:I

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lh8/a;-><init>(Lx7/b;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Ld8/b;->a:Lc5/e;

    .line 8
    .line 9
    iput-object p1, p0, Lh8/g;->g:Lb8/c;

    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    iput p1, p0, Lh8/g;->e:I

    .line 13
    .line 14
    iput p2, p0, Lh8/g;->f:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final e(Lx7/d;)V
    .registers 8

    .line 1
    iget v0, p0, Lh8/g;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_50

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh8/g;->g:Lb8/c;

    .line 7
    .line 8
    check-cast v0, Lc5/e;

    .line 9
    .line 10
    iget-object v1, p0, Lh8/a;->c:Lx7/b;

    .line 11
    .line 12
    invoke-static {v1, p1, v0}, Ly5/k;->y(Ln9/a;Lx7/d;Lb8/c;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_12

    .line 17
    .line 18
    goto :goto_1e

    .line 19
    :cond_12
    new-instance v2, Lh8/y;

    .line 20
    .line 21
    iget v3, p0, Lh8/g;->e:I

    .line 22
    .line 23
    iget v4, p0, Lh8/g;->f:I

    .line 24
    .line 25
    invoke-direct {v2, p1, v0, v3, v4}, Lh8/y;-><init>(Lx7/d;Lc5/e;II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lx7/b;->d(Lx7/d;)V

    .line 29
    .line 30
    .line 31
    :goto_1e
    return-void

    .line 32
    :pswitch_1f
    iget-object v0, p0, Lh8/g;->g:Lb8/c;

    .line 33
    .line 34
    check-cast v0, Lf5/q;

    .line 35
    .line 36
    iget-object v1, p0, Lh8/a;->c:Lx7/b;

    .line 37
    .line 38
    invoke-static {v1, p1, v0}, Ly5/k;->y(Ln9/a;Lx7/d;Lb8/c;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2c

    .line 43
    .line 44
    goto :goto_4f

    .line 45
    :cond_2c
    iget v2, p0, Lh8/g;->f:I

    .line 46
    .line 47
    invoke-static {v2}, Lcom/bumptech/glide/g;->c(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v3, p0, Lh8/g;->e:I

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    if-eq v2, v4, :cond_46

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    if-eq v2, v5, :cond_40

    .line 58
    .line 59
    new-instance v2, Lh8/d;

    .line 60
    .line 61
    invoke-direct {v2, p1, v0, v3}, Lh8/d;-><init>(Lx7/d;Lf5/q;I)V

    .line 62
    .line 63
    .line 64
    goto :goto_4c

    .line 65
    :cond_40
    new-instance v2, Lh8/c;

    .line 66
    .line 67
    invoke-direct {v2, p1, v0, v3, v4}, Lh8/c;-><init>(Lx7/d;Lf5/q;IZ)V

    .line 68
    .line 69
    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    new-instance v2, Lh8/c;

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-direct {v2, p1, v0, v3, v4}, Lh8/c;-><init>(Lx7/d;Lf5/q;IZ)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    invoke-virtual {v1, v2}, Lx7/b;->d(Lx7/d;)V

    .line 78
    .line 79
    .line 80
    :goto_4f
    return-void

    .line 81
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method
