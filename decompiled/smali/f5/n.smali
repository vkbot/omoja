.class public final synthetic Lf5/n;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lb8/b;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf5/o;


# direct methods
.method public synthetic constructor <init>(Lf5/o;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf5/n;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5/n;->c:Lf5/o;

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
    .locals 1

    .line 1
    iget v0, p0, Lf5/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    .line 8
    sget-object p1, Li8/d;->b:Li8/d;

    .line 9
    .line 10
    iget-object v0, p0, Lf5/n;->c:Lf5/o;

    .line 11
    .line 12
    iput-object p1, v0, Lf5/o;->b:Lx7/e;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Ly5/c;

    .line 16
    .line 17
    invoke-static {p1}, Lx7/e;->a(Ljava/lang/Object;)Li8/o;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lf5/n;->c:Lf5/o;

    .line 22
    .line 23
    iput-object p1, v0, Lf5/o;->b:Lx7/e;

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
