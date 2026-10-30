.class public final Li8/f;
.super Li8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lx7/e;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Li8/f;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Li8/a;-><init>(Lx7/e;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Li8/f;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .locals 3

    .line 1
    iget v0, p0, Li8/f;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Li8/h;

    .line 7
    .line 8
    iget-object v1, p0, Li8/f;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lx7/e;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v2, p1, v1}, Li8/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    new-instance v0, Li8/q;

    .line 23
    .line 24
    iget-object v1, p0, Li8/f;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ld8/a;

    .line 27
    .line 28
    invoke-direct {v0, p1, v1}, Li8/q;-><init>(Lx7/f;Ld8/a;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    new-instance v0, Li8/p;

    .line 38
    .line 39
    iget-object v1, p0, Li8/f;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lx7/k;

    .line 42
    .line 43
    invoke-direct {v0, p1, v1}, Li8/p;-><init>(Lx7/f;Lx7/k;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    new-instance v0, Li8/e;

    .line 53
    .line 54
    iget-object v1, p0, Li8/f;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lb8/d;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v0, p1, v1, v2}, Li8/e;-><init>(Lx7/f;Lb8/d;I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
