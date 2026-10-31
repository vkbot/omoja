.class public final Lj8/c;
.super Lj8/a;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lx7/g;Ljava/lang/Object;I)V
    .registers 4

    .line 1
    iput p3, p0, Lj8/c;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lj8/a;-><init>(Lx7/g;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lj8/c;->d:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lx7/h;)V
    .registers 5

    .line 1
    iget v0, p0, Lj8/c;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj8/j;

    .line 7
    .line 8
    iget-object v1, p0, Lj8/c;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Le0/g;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Lj8/j;-><init>(Lx7/h;Le0/g;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lj8/a;->b:Lx7/g;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lx7/g;->c(Lx7/h;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_14
    new-instance v0, Lj8/b;

    .line 22
    .line 23
    iget-object v1, p0, Lj8/c;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, La9/w;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p1, v1, v2}, Lj8/b;-><init>(Ljava/lang/Object;La9/w;I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lj8/a;->b:Lx7/g;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lx7/g;->c(Lx7/h;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
