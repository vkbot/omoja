.class public final Lcom/google/android/material/timepicker/c;
.super Lh0/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Lh0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Li0/c;)V
    .locals 3

    iget-object v0, p0, Lh0/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, Li0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    iget-object p0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->w:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, v1, p1}, Landroidx/appcompat/app/f0;->d(IIIIZ)Landroidx/appcompat/app/f0;

    move-result-object p0

    invoke-virtual {p2, p0}, Li0/c;->g(Landroidx/appcompat/app/f0;)V

    return-void
.end method
