.class public final Lo7/m0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/k0;


# direct methods
.method public synthetic constructor <init>(Lo7/k0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lo7/m0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/m0;->c:Lo7/k0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget v0, p0, Lo7/m0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2c

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/m0;->c:Lo7/k0;

    .line 7
    .line 8
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 9
    .line 10
    invoke-interface {v0}, Lo7/u;->i()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lo7/m0;->c:Lo7/k0;

    .line 15
    .line 16
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 17
    .line 18
    invoke-interface {v0}, Lo7/u4;->flush()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Lo7/m0;->c:Lo7/k0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lo7/k0;->j()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lo7/m0;->c:Lo7/k0;

    .line 29
    .line 30
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 31
    .line 32
    invoke-interface {v0}, Lo7/u4;->o()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_23
    iget-object v0, p0, Lo7/m0;->c:Lo7/k0;

    .line 37
    .line 38
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 39
    .line 40
    invoke-interface {v0}, Lo7/u4;->request()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1b
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
