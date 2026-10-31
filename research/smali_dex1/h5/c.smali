.class public final Lh5/c;
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
    iput p2, p0, Lh5/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh5/c;->c:La5/h;

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
    .registers 2

    .line 1
    iget v0, p0, Lh5/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh5/c;->c:La5/h;

    .line 7
    .line 8
    iget-object v0, v0, La5/h;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_f
    iget-object v0, p0, Lh5/c;->c:La5/h;

    .line 17
    .line 18
    iget-object v0, v0, La5/h;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_19
    iget-object v0, p0, Lh5/c;->c:La5/h;

    .line 27
    .line 28
    iget-object v0, v0, La5/h;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method
