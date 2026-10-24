.class public final Lu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lu/e;->a:I

    iput-object p2, p0, Lu/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget v0, p0, Lu/e;->a:I

    const/4 v1, 0x1

    iget-object p0, p0, Lu/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u(I)V

    return v1

    :goto_0
    check-cast p0, Lq1/p;

    iget-object v0, p0, Lq1/p;->v:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    iget v2, p0, Lq1/p;->o:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    iput v0, p0, Lq1/p;->o:F

    invoke-virtual {p0}, Lq1/p;->q()V

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
