.class public final Lv7/h;
.super Lv7/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lv7/h;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lv7/h;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public D(Ln7/j;Ln7/h0;)V
    .locals 4

    .line 1
    iget v0, p0, Lv7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lv7/a;->D(Ln7/j;Ln7/h0;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lv7/h;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lv7/i;

    .line 13
    .line 14
    iget-object v1, v0, Lv7/i;->g:Lv7/x;

    .line 15
    .line 16
    iget-object v2, v1, Lv7/x;->f:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    iget-object v3, v0, Lv7/i;->a:Lv7/j;

    .line 19
    .line 20
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object p1, v0, Lv7/i;->d:Ln7/j;

    .line 28
    .line 29
    iput-object p2, v0, Lv7/i;->e:Ln7/h0;

    .line 30
    .line 31
    iget-boolean p2, v0, Lv7/i;->f:Z

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    iget-boolean p2, v1, Lv7/x;->h:Z

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    sget-object p2, Ln7/j;->e:Ln7/j;

    .line 40
    .line 41
    if-ne p1, p2, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lv7/i;->b:Lv7/e;

    .line 44
    .line 45
    invoke-virtual {p1}, Lv7/e;->e()V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {v1}, Lv7/x;->j()V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final E()Ln7/e;
    .locals 1

    .line 1
    iget v0, p0, Lv7/h;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/h;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv7/i;

    .line 9
    .line 10
    iget-object v0, v0, Lv7/i;->g:Lv7/x;

    .line 11
    .line 12
    iget-object v0, v0, Lv7/x;->g:Ln7/e;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, Lv7/h;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ln7/e;

    .line 18
    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ln7/e0;)Ln7/t;
    .locals 3

    .line 1
    iget v0, p0, Lv7/h;->b:I

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
    invoke-virtual {p1}, Ln7/e0;->c()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ln7/i0;

    .line 16
    .line 17
    invoke-super {p0, p1}, Lv7/a;->b(Ln7/e0;)Ln7/t;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ln7/t;->d()Ln7/b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Ln7/j0;->d:Ln7/a;

    .line 28
    .line 29
    iget-object v1, v1, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Lv7/g;

    .line 38
    .line 39
    invoke-direct {v1, p1, v0}, Lv7/g;-><init>(Ln7/t;Ln7/i0;)V

    .line 40
    .line 41
    .line 42
    move-object p1, v1

    .line 43
    :cond_0
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
