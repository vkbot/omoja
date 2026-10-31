.class public final Lk8/a;
.super Lx7/l;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic a:I

.field public final b:Lx7/l;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lx7/l;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lk8/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lk8/a;->b:Lx7/l;

    .line 4
    .line 5
    iput-object p2, p0, Lk8/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Lx7/m;)V
    .registers 5

    .line 1
    iget v0, p0, Lk8/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_32

    .line 4
    .line 5
    .line 6
    new-instance v0, Li8/h;

    .line 7
    .line 8
    iget-object v1, p0, Lk8/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ld8/a;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v2, p1, v1}, Li8/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lk8/a;->b:Lx7/l;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lx7/l;->a(Lx7/m;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_15
    new-instance v0, Landroid/support/v4/media/h;

    .line 23
    .line 24
    const/16 v1, 0x1d

    .line 25
    .line 26
    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/media/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lk8/a;->b:Lx7/l;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lx7/l;->a(Lx7/m;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_22
    iget-object v0, p0, Lk8/a;->b:Lx7/l;

    .line 36
    .line 37
    check-cast v0, Lj8/d;

    .line 38
    .line 39
    new-instance v1, Landroid/support/v4/media/h;

    .line 40
    .line 41
    const/16 v2, 0x1c

    .line 42
    .line 43
    invoke-direct {v1, v2, p0, p1}, Landroid/support/v4/media/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lx7/l;->a(Lx7/m;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_22
        :pswitch_15
    .end packed-switch
.end method
