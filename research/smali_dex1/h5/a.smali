.class public final Lh5/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;


# instance fields
.field public final synthetic b:I

.field public final c:La5/h;


# direct methods
.method public synthetic constructor <init>(La5/h;I)V
    .registers 3

    .line 1
    iput p2, p0, Lh5/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh5/a;->c:La5/h;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 1
    iget v0, p0, Lh5/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    new-instance v0, Lf5/l0;

    .line 7
    .line 8
    iget-object v1, p0, Lh5/a;->c:La5/h;

    .line 9
    .line 10
    iget-object v1, v1, La5/h;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lo4/f;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lf5/l0;-><init>(Lo4/f;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_11
    iget-object v0, p0, Lh5/a;->c:La5/h;

    .line 19
    .line 20
    iget-object v0, v0, La5/h;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ll5/e;

    .line 23
    .line 24
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1b
    iget-object v0, p0, Lh5/a;->c:La5/h;

    .line 29
    .line 30
    iget-object v0, v0, La5/h;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lo4/f;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_11
    .end packed-switch
.end method
