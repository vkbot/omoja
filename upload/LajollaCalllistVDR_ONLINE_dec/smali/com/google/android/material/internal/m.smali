.class public final Lcom/google/android/material/internal/m;
.super Landroidx/recyclerview/widget/k1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/material/internal/p;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/p;Lcom/google/android/material/internal/NavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/m;->f:Lcom/google/android/material/internal/p;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/k1;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lh0/c;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/k1;->d(Landroid/view/View;Lh0/c;)V

    iget-object p1, p0, Lcom/google/android/material/internal/m;->f:Lcom/google/android/material/internal/p;

    iget-object p1, p1, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    iget-object p1, p1, Lcom/google/android/material/internal/h;->f:Lcom/google/android/material/internal/p;

    iget-object v0, p1, Lcom/google/android/material/internal/p;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p1, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    invoke-virtual {v3}, Lcom/google/android/material/internal/h;->a()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p1, Lcom/google/android/material/internal/p;->f:Lcom/google/android/material/internal/h;

    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/h;->c(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0, v1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p2, Lh0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method
