.class public final Lh5/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;


# instance fields
.field public final synthetic b:I

.field public final c:Lr5/c;


# direct methods
.method public synthetic constructor <init>(Lr5/c;I)V
    .registers 3

    .line 1
    iput p2, p0, Lh5/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh5/d;->c:Lr5/c;

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
    .registers 4

    .line 1
    iget v0, p0, Lh5/d;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lh5/d;->c:Lr5/c;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_28

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lr5/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lf5/w;

    .line 11
    .line 12
    return-object v0

    .line 13
    :pswitch_c
    new-instance v0, Le0/g;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Le0/g;-><init>(Lr5/c;)V

    .line 16
    .line 17
    .line 18
    sget v1, Lx7/b;->b:I

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    const-string v2, "mode is null"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lcom/google/protobuf/q;->p(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lh8/l;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, v2, v0}, Lh8/l;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lx7/b;->c()Lh8/p0;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lh8/p0;->f()V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    nop

    .line 41
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method
