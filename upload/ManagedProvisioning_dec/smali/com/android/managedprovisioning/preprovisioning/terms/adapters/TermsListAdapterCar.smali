.class public Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TermsListAdapterCar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatusBarColor:I

.field private final mTerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mTerms:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mContext:Landroid/content/Context;

    .line 46
    iput p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mStatusBarColor:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mTerms:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->onBindViewHolder(Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;I)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mTerms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    .line 60
    invoke-virtual {p2}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->getHeading()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p2}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->getHeading()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d00b5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;->mContentTextView:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->mStatusBarColor:I

    invoke-static {v0, p1, p2, p0}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsAdapterUtils;->populateContentTextView(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0c00bd

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 53
    new-instance p1, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapterCar$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
