.class public final Lo7/r3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo7/r3;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lo7/c4;)V
    .locals 1

    .line 1
    iget v0, p0, Lo7/r3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 7
    .line 8
    invoke-interface {p1}, Lo7/u4;->request()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 13
    .line 14
    invoke-interface {p1}, Lo7/u4;->o()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 19
    .line 20
    invoke-interface {p1}, Lo7/u;->i()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 25
    .line 26
    invoke-interface {p1}, Lo7/u4;->flush()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
