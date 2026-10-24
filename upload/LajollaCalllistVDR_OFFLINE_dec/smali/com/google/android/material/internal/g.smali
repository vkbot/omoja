.class public final Lcom/google/android/material/internal/g;
.super Lcom/google/android/material/internal/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    .line 1
    sget p3, Lcom/google/android/material/R$layout;->design_navigation_item_separator:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/o;-><init>(Landroid/view/View;)V

    return-void

    .line 2
    :cond_0
    sget p3, Lcom/google/android/material/R$layout;->design_navigation_item_subheader:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/o;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/o;-><init>(Landroid/view/View;)V

    return-void
.end method
