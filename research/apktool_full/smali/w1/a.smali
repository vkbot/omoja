.class public final synthetic Lw1/a;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw1/e;


# direct methods
.method public synthetic constructor <init>(Lw1/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw1/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/a;->b:Lw1/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lw1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw1/a;->b:Lw1/e;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lw1/e;->b(Lw1/e;Landroid/animation/ValueAnimator;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lw1/a;->b:Lw1/e;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lw1/e;->a(Lw1/e;Landroid/animation/ValueAnimator;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
