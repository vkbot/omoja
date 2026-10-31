.class public final Lo7/d3;
.super Ln7/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln7/f0;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo7/d3;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "result"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lo7/d3;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ln7/h0;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lo7/d3;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo7/d3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lo7/g3;)Ln7/f0;
    .registers 6

    .line 1
    iget v0, p0, Lo7/d3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/d3;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln7/h0;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ln7/h0;->a(Lo7/g3;)Ln7/f0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p1, Ln7/f0;->a:Ln7/t;

    .line 15
    .line 16
    if-eqz v0, :cond_2a

    .line 17
    .line 18
    new-instance v1, Lv7/r;

    .line 19
    .line 20
    invoke-virtual {v0}, Ln7/t;->d()Ln7/b;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Lv7/t;->n:Ln7/a;

    .line 25
    .line 26
    iget-object v2, v2, Ln7/b;->a:Ljava/util/IdentityHashMap;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lv7/k;

    .line 33
    .line 34
    iget-object p1, p1, Ln7/f0;->b:Ln7/g;

    .line 35
    .line 36
    invoke-direct {v1, v2, p1}, Lv7/r;-><init>(Lv7/k;Ln7/g;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ln7/f0;->b(Ln7/t;Lv7/r;)Ln7/f0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_2a
    return-object p1

    .line 44
    :pswitch_2b
    iget-object p1, p0, Lo7/d3;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ln7/f0;

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lo7/d3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

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
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    const-class v1, Lo7/d3;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/bumptech/glide/manager/s;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lo7/d3;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ln7/f0;

    .line 25
    .line 26
    const-string v2, "result"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
