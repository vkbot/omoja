.class public final Lcom/google/android/material/bottomappbar/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/g;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/bottomappbar/g;->a:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    iget-object p3, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/bottomappbar/BottomAppBar;

    if-eqz p3, :cond_3

    instance-of p4, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, p1

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    const/4 p6, 0x0

    iget-object p7, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->e:Landroid/graphics/Rect;

    invoke-virtual {p7, p6, p6, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p7}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->j(Landroid/graphics/Rect;)V

    invoke-virtual {p7}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->E(I)V

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Ly1/n;

    move-result-object p5

    iget-object p5, p5, Ly1/n;->e:Ly1/c;

    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6, p7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p5, p6}, Ly1/c;->a(Landroid/graphics/RectF;)F

    move-result p5

    invoke-virtual {p3, p5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lu/d;

    iget p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->g:I

    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    sub-int/2addr p4, p2

    invoke-static {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p2

    add-int/2addr p2, p4

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {p0}, Lcom/google/android/material/internal/c0;->d(Landroid/view/View;)Z

    move-result p0

    iget p2, p3, Lcom/google/android/material/bottomappbar/BottomAppBar;->P:I

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
