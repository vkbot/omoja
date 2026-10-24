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
.method public final d(Landroid/view/View;Li0/c;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/k1;->d(Landroid/view/View;Li0/c;)V

    iget-object p0, p0, Lcom/google/android/material/internal/m;->f:Lcom/google/android/material/internal/p;

    iget-object p0, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    iget-object p0, p0, Lcom/google/android/material/internal/h;->f:Lcom/google/android/material/internal/p;

    iget-object p1, p0, Lcom/google/android/material/internal/p;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    invoke-virtual {v2}, Lcom/google/android/material/internal/h;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/internal/p;->e:Lcom/google/android/material/internal/h;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/h;->c(I)I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    iget-object p1, p2, Li0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method
