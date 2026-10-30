.class public final Lo7/c1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/o1;


# direct methods
.method public constructor <init>(Lo7/o1;J)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lo7/c1;->b:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lo7/c1;->c:Lo7/o1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lo7/o1;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lo7/c1;->b:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/c1;->c:Lo7/o1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lo7/c1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/c1;->c:Lo7/o1;

    .line 7
    .line 8
    iget-object v0, v0, Lo7/o1;->a:Ln/p;

    .line 9
    .line 10
    iget-object v0, v0, Ln/p;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lp7/n;

    .line 13
    .line 14
    sget-object v1, Ln7/f1;->m:Ln7/f1;

    .line 15
    .line 16
    const-string v2, "Keepalive failed. The connection is likely gone"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lp7/n;->q(Ln7/f1;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lo7/c1;->c:Lo7/o1;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
