.class public Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TermsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

.field private final mGroupExpandedInfo:Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mStatusBarColor:I

.field private final mTermsDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;",
            "Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;",
            "I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 55
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mTermsDocuments:Ljava/util/List;

    .line 56
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mGroupExpandedInfo:Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;

    .line 58
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    iput-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    .line 59
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput p6, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mStatusBarColor:I

    return-void
.end method

.method private getDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mTermsDocuments:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    return-object p0
.end method

.method private shouldShowGroupDivider(I)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mGroupExpandedInfo:Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;

    invoke-interface {v0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;->isGroupExpanded(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mGroupExpandedInfo:Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;

    sub-int/2addr p1, v1

    .line 125
    invoke-interface {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter$GroupExpandedInfo;->isGroupExpanded(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public getChild(II)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getChild(II)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-eqz p4, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00be

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p5, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p1

    const p2, 0x7f0900e5

    .line 136
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 137
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mContext:Landroid/content/Context;

    iget p5, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mStatusBarColor:I

    invoke-static {p3, p2, p1, p5}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsAdapterUtils;->populateContentTextView(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;I)V

    .line 138
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mContextMenuMaker:Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;

    invoke-virtual {p0, p2}, Lcom/android/managedprovisioning/common/AccessibilityContextMenuMaker;->registerWithActivity(Landroid/widget/TextView;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getGroup(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getGroup(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mTermsDocuments:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 102
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->getDisclaimer(I)Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/managedprovisioning/preprovisioning/terms/TermsDocument;->getHeading()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p3, p0, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00bf

    invoke-virtual {p3, v2, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 107
    :goto_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v2, 0x7f0d00b5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p4, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 106
    invoke-virtual {p3, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const p4, 0x7f090106

    .line 109
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 110
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p4, 0x7f0900c3

    .line 112
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/high16 p2, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_1
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 113
    :goto_1
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setRotation(F)V

    const p2, 0x7f0900e6

    .line 114
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 115
    invoke-direct {p0, p1}, Lcom/android/managedprovisioning/preprovisioning/terms/adapters/TermsListAdapter;->shouldShowGroupDivider(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 114
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
