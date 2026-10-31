.class public final synthetic Lf5/h0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/b;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf5/i0;


# direct methods
.method public synthetic constructor <init>(Lf5/i0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lf5/h0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5/h0;->c:Lf5/i0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget v0, p0, Lf5/h0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1c

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    sget-object p1, Li8/d;->b:Li8/d;

    .line 9
    .line 10
    iget-object v0, p0, Lf5/h0;->c:Lf5/i0;

    .line 11
    .line 12
    iput-object p1, v0, Lf5/i0;->c:Lx7/e;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_e
    check-cast p1, Lf5/f0;

    .line 16
    .line 17
    iget-object v0, p0, Lf5/h0;->c:Lf5/i0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, v0, Lf5/i0;->c:Lx7/e;

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
