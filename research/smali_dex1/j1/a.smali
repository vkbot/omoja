.class public final Lj1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lj1/v;


# instance fields
.field public final synthetic a:I

.field public b:Lc5/e;

.field public c:Lj1/w;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lj1/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final i(Landroid/content/Context;Li0/a;)V
    .registers 3

    .line 1
    return-void
.end method

.method private final j(Landroid/content/Context;Li0/a;)V
    .registers 3

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Li0/a;)V
    .registers 3

    .line 1
    iget p1, p0, Lj1/a;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final b()Lz0/a;
    .registers 3

    .line 1
    iget v0, p0, Lj1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 7
    .line 8
    if-nez v0, :cond_12

    .line 9
    .line 10
    new-instance v0, Lc5/e;

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 18
    .line 19
    :cond_12
    iget-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_15
    iget-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 23
    .line 24
    if-nez v0, :cond_22

    .line 25
    .line 26
    new-instance v0, Lc5/e;

    .line 27
    .line 28
    const/16 v1, 0x14

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 34
    .line 35
    :cond_22
    iget-object v0, p0, Lj1/a;->b:Lc5/e;

    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public final d()Lj1/w;
    .registers 3

    .line 1
    iget v0, p0, Lj1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 7
    .line 8
    check-cast v0, Lj1/x;

    .line 9
    .line 10
    if-nez v0, :cond_18

    .line 11
    .line 12
    new-instance v0, Lj1/x;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lj1/x;->b:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lj1/x;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 24
    .line 25
    :cond_18
    iget-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 26
    .line 27
    check-cast v0, Lj1/x;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 31
    .line 32
    check-cast v0, Lc5/e;

    .line 33
    .line 34
    if-nez v0, :cond_2c

    .line 35
    .line 36
    new-instance v0, Lc5/e;

    .line 37
    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lc5/e;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 44
    .line 45
    :cond_2c
    iget-object v0, p0, Lj1/a;->c:Lj1/w;

    .line 46
    .line 47
    check-cast v0, Lc5/e;

    .line 48
    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
