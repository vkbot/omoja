.class public final Li8/k;
.super Li8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic c:I

.field public final d:Lb8/c;


# direct methods
.method public synthetic constructor <init>(Lx7/e;Lb8/c;I)V
    .registers 4

    .line 1
    iput p3, p0, Li8/k;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Li8/a;-><init>(Lx7/e;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Li8/k;->d:Lb8/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/f;)V
    .registers 5

    .line 1
    iget v0, p0, Li8/k;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    new-instance v0, Lg8/c;

    .line 7
    .line 8
    iget-object v1, p0, Li8/k;->d:Lb8/c;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v0, p1, v1, v2}, Lg8/c;-><init>(Lx7/f;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    new-instance v0, Li8/j;

    .line 21
    .line 22
    iget-object v1, p0, Li8/k;->d:Lb8/c;

    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Li8/j;-><init>(Lx7/f;Lb8/c;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Li8/a;->b:Lx7/e;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lx7/e;->c(Lx7/f;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method
