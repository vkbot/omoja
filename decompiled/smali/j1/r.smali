.class public final Lj1/r;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/v;


# instance fields
.field public final synthetic a:I

.field public b:Lz0/a;

.field public c:Lj1/w;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lj1/r;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lp2/e;

    .line 14
    .line 15
    const/16 v0, 0xe

    .line 16
    .line 17
    invoke-direct {p1, v0}, Lp2/e;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lj1/r;->b:Lz0/a;

    .line 21
    .line 22
    new-instance p1, Lc5/e;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Lc5/e;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lj1/r;->c:Lj1/w;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final i(Landroid/content/Context;Li0/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(Landroid/content/Context;Li0/a;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Li0/a;)V
    .locals 0

    .line 1
    iget p1, p0, Lj1/r;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final b()Lz0/a;
    .locals 2

    .line 1
    iget v0, p0, Lj1/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj1/r;->b:Lz0/a;

    .line 7
    .line 8
    check-cast v0, Lp2/e;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lj1/r;->b:Lz0/a;

    .line 12
    .line 13
    check-cast v0, Lp2/e;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lp2/e;

    .line 18
    .line 19
    const/16 v1, 0x14

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lp2/e;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lj1/r;->b:Lz0/a;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lj1/r;->b:Lz0/a;

    .line 27
    .line 28
    check-cast v0, Lp2/e;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lj1/w;
    .locals 2

    .line 1
    iget v0, p0, Lj1/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj1/r;->c:Lj1/w;

    .line 7
    .line 8
    check-cast v0, Lc5/e;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lj1/r;->c:Lj1/w;

    .line 12
    .line 13
    check-cast v0, Lc5/e;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lc5/e;

    .line 18
    .line 19
    const/16 v1, 0xc

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lj1/r;->c:Lj1/w;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lj1/r;->c:Lj1/w;

    .line 27
    .line 28
    check-cast v0, Lc5/e;

    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget v0, p0, Lj1/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0

    .line 8
    :pswitch_0
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
