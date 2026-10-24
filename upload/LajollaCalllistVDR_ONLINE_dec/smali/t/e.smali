.class public final Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lt/e;->b:I

    iput-object p2, p0, Lt/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget v0, p0, Lt/e;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lt/e;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(I)V

    return v1

    :goto_0
    check-cast v2, Ly1/q;

    iget-object v0, v2, Ly1/q;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v3, v2, Ly1/q;->o:F

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    iput v0, v2, Ly1/q;->o:F

    invoke-virtual {v2}, Ly1/q;->q()V

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
