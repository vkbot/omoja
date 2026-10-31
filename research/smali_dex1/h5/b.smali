.class public final Lh5/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;


# instance fields
.field public final synthetic b:I

.field public final c:Landroid/support/v4/media/h;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v4/media/h;I)V
    .registers 3

    .line 1
    iput p2, p0, Lh5/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lh5/b;->c:Landroid/support/v4/media/h;

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
    iget v0, p0, Lh5/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh5/b;->c:Landroid/support/v4/media/h;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/support/v4/media/h;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lb5/b;

    .line 11
    .line 12
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_f
    iget-object v0, p0, Lh5/b;->c:Landroid/support/v4/media/h;

    .line 17
    .line 18
    iget-object v0, v0, Landroid/support/v4/media/h;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lf5/b0;

    .line 21
    .line 22
    invoke-static {v0}, La/a;->e(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
