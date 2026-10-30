.class public final Lo7/x2;
.super Ln7/h0;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln7/f0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lo7/x2;->a:I

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
    iput-object p1, p0, Lo7/x2;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ln7/f1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo7/x2;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo7/x2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lo7/g3;)Ln7/f0;
    .locals 0

    .line 1
    iget p1, p0, Lo7/x2;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo7/x2;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ln7/f1;

    .line 9
    .line 10
    invoke-static {p1}, Ln7/f0;->a(Ln7/f1;)Ln7/f0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-object p1, p0, Lo7/x2;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ln7/f0;

    .line 18
    .line 19
    return-object p1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lo7/x2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    const-class v1, Lo7/x2;

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
    iget-object v1, p0, Lo7/x2;->b:Ljava/lang/Object;

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
