.class public final Lo7/h0;
.super Lo7/d0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic d:I

.field public final e:Ln7/e;

.field public final f:Ln7/f1;


# direct methods
.method public constructor <init>(Lo7/b2;Ln7/e;Ln7/f1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo7/h0;->d:I

    .line 15
    iget-object p1, p1, Lo7/b2;->f:Ln7/n;

    .line 16
    invoke-direct {p0, v0, p1}, Lo7/d0;-><init>(ILjava/lang/Object;)V

    .line 17
    iput-object p2, p0, Lo7/h0;->e:Ln7/e;

    .line 18
    iput-object p3, p0, Lo7/h0;->f:Ln7/f1;

    return-void
.end method

.method public constructor <init>(Lo7/w1;Ln7/e;Ln7/f1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo7/h0;->d:I

    .line 3
    .line 4
    iput-object p2, p0, Lo7/h0;->e:Ln7/e;

    .line 5
    .line 6
    iput-object p3, p0, Lo7/h0;->f:Ln7/f1;

    .line 7
    .line 8
    iget-object p1, p1, Lo7/w1;->h:Ln7/n;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p0, p2, p1}, Lo7/d0;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Lo7/h0;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ln7/v0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lo7/h0;->e:Ln7/e;

    .line 12
    .line 13
    iget-object v2, p0, Lo7/h0;->f:Ln7/f1;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ln7/e;->o(Ln7/f1;Ln7/v0;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    new-instance v0, Ln7/v0;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lo7/h0;->e:Ln7/e;

    .line 25
    .line 26
    iget-object v2, p0, Lo7/h0;->f:Ln7/f1;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Ln7/e;->o(Ln7/f1;Ln7/v0;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
