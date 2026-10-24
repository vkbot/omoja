.class public Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TermsListAdapterCar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mContentTextView:Landroid/widget/TextView;

.field final mHeaderTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090106

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    const v0, 0x7f0900e5

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;->mContentTextView:Landroid/widget/TextView;

    return-void
.end method
