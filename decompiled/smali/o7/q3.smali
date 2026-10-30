.class public final Lo7/q3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo7/q3;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lo7/q3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lo7/c4;)V
    .locals 1

    .line 1
    iget v0, p0, Lo7/q3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 7
    .line 8
    iget-object v0, p0, Lo7/q3;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ln7/q;

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lo7/u;->g(Ln7/q;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 17
    .line 18
    iget-object v0, p0, Lo7/q3;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ln7/o;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lo7/u;->n(Ln7/o;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 27
    .line 28
    iget-object v0, p0, Lo7/q3;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ln7/h;

    .line 31
    .line 32
    invoke-interface {p1, v0}, Lo7/u4;->a(Ln7/h;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
