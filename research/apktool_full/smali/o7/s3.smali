.class public final Lo7/s3;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lo7/v3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/s3;->a:I

    .line 2
    .line 3
    iput p1, p0, Lo7/s3;->b:I

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
    iget v0, p0, Lo7/s3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 7
    .line 8
    iget v0, p0, Lo7/s3;->b:I

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lo7/u;->c(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p1, Lo7/c4;->a:Lo7/u;

    .line 15
    .line 16
    iget v0, p0, Lo7/s3;->b:I

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lo7/u;->m(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
