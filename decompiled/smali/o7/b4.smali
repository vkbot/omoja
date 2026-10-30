.class public final Lo7/b4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo7/w4;


# direct methods
.method public synthetic constructor <init>(Lo7/w4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo7/b4;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/b4;->c:Lo7/w4;

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
    .locals 4

    .line 1
    iget v0, p0, Lo7/b4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/b4;->c:Lo7/w4;

    .line 7
    .line 8
    iget-object v0, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lo7/v1;

    .line 11
    .line 12
    iget-boolean v1, v0, Lo7/v1;->A:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lo7/v1;->v:Lo7/w;

    .line 17
    .line 18
    invoke-interface {v0}, Lo7/w;->j()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lo7/b4;->c:Lo7/w4;

    .line 23
    .line 24
    iget-object v0, v0, Lo7/w4;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lo7/v1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, v0, Lo7/v1;->A:Z

    .line 30
    .line 31
    iget-object v1, v0, Lo7/v1;->v:Lo7/w;

    .line 32
    .line 33
    iget-object v0, v0, Lo7/v1;->t:La5/h;

    .line 34
    .line 35
    iget-object v2, v0, La5/h;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ln7/f1;

    .line 38
    .line 39
    iget-object v3, v0, La5/h;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lo7/v;

    .line 42
    .line 43
    iget-object v0, v0, La5/h;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ln7/v0;

    .line 46
    .line 47
    invoke-interface {v1, v2, v3, v0}, Lo7/w;->b(Ln7/f1;Lo7/v;Ln7/v0;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
