.class public final Lv7/d;
.super Lv7/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public c:Ljava/lang/Object;

.field public final synthetic d:Ln7/j0;


# direct methods
.method public constructor <init>(Lv7/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lv7/d;->b:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lv7/d;->d:Ln7/j0;

    return-void
.end method

.method public constructor <init>(Lv7/t;Ln7/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lv7/d;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lv7/d;->d:Ln7/j0;

    .line 8
    .line 9
    new-instance p1, Lv7/h;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0, p2}, Lv7/h;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lv7/d;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final D(Ln7/j;Ln7/h0;)V
    .locals 5

    .line 1
    iget v0, p0, Lv7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv7/h;

    .line 9
    .line 10
    new-instance v1, Lo7/d3;

    .line 11
    .line 12
    invoke-direct {v1, p2}, Lo7/d3;-><init>(Ln7/h0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lv7/a;->D(Ln7/j;Ln7/h0;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lv7/d;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ln7/j0;

    .line 22
    .line 23
    iget-object v1, p0, Lv7/d;->d:Ln7/j0;

    .line 24
    .line 25
    check-cast v1, Lv7/e;

    .line 26
    .line 27
    iget-object v2, v1, Lv7/e;->k:Ln7/j0;

    .line 28
    .line 29
    sget-object v3, Ln7/j;->c:Ln7/j;

    .line 30
    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    iget-boolean v0, v1, Lv7/e;->n:Z

    .line 34
    .line 35
    const-string v2, "there\'s pending lb while current lb has been out of READY"

    .line 36
    .line 37
    invoke-static {v0, v2}, Lo4/b;->m(ZLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, v1, Lv7/e;->l:Ln7/j;

    .line 41
    .line 42
    iput-object p2, v1, Lv7/e;->m:Ln7/h0;

    .line 43
    .line 44
    if-ne p1, v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v1}, Lv7/e;->h()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object v4, v1, Lv7/e;->i:Ln7/j0;

    .line 51
    .line 52
    if-ne v0, v4, :cond_3

    .line 53
    .line 54
    if-ne p1, v3, :cond_1

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_0
    iput-boolean v0, v1, Lv7/e;->n:Z

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    iget-object v0, v1, Lv7/e;->f:Lv7/c;

    .line 64
    .line 65
    if-eq v2, v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1}, Lv7/e;->h()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v0, v1, Lv7/e;->g:Lv7/a;

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Lv7/a;->D(Ln7/j;Ln7/h0;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E()Ln7/e;
    .locals 1

    .line 1
    iget v0, p0, Lv7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv7/h;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lv7/d;->d:Ln7/j0;

    .line 12
    .line 13
    check-cast v0, Lv7/e;

    .line 14
    .line 15
    iget-object v0, v0, Lv7/e;->g:Lv7/a;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ln7/e0;)Ln7/t;
    .locals 5

    .line 1
    iget v0, p0, Lv7/d;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lv7/a;->b(Ln7/e0;)Ln7/t;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    new-instance v0, Lv7/s;

    .line 12
    .line 13
    iget-object v1, p0, Lv7/d;->d:Ln7/j0;

    .line 14
    .line 15
    check-cast v1, Lv7/t;

    .line 16
    .line 17
    iget-object v2, v1, Lv7/t;->f:Lv7/l;

    .line 18
    .line 19
    iget-object v3, p0, Lv7/d;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lv7/h;

    .line 22
    .line 23
    invoke-direct {v0, v1, p1, v3}, Lv7/s;-><init>(Lv7/t;Ln7/e0;Lv7/h;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Ln7/e0;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {p1}, Lv7/t;->g(Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ln7/r;

    .line 40
    .line 41
    iget-object v3, v3, Ln7/r;->a:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, v2, Lv7/l;->b:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ln7/r;

    .line 60
    .line 61
    iget-object p1, p1, Ln7/r;->a:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object v1, v2, Lv7/l;->b:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lv7/k;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lv7/k;->a(Lv7/s;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p1, Lv7/k;->d:Ljava/lang/Long;

    .line 79
    .line 80
    if-eqz p1, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0}, Lv7/s;->s()V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-object v0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
