.class public Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
.super Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/widget/recyclerview/HorizontalDividerItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder<",
        "Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$1;

    invoke-direct {p1, p0}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$1;-><init>(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;)V

    iput-object p1, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    return-void
.end method

.method public static synthetic access$000(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    return-object p0
.end method

.method private marginProvider(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
    .locals 0

    iput-object p1, p0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->mMarginProvider:Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;

    return-object p0
.end method


# virtual methods
.method public build()Lmega/widget/recyclerview/HorizontalDividerItemDecoration;
    .locals 1

    invoke-virtual {p0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->checkBuilderParams()V

    new-instance v0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;

    invoke-direct {v0, p0}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration;-><init>(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;)V

    return-object v0
.end method

.method public margin(I)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p1}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->margin(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public margin(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
    .locals 1

    .line 1
    new-instance v0, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;

    invoke-direct {v0, p0, p1, p2}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder$2;-><init>(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;II)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->marginProvider(Lmega/widget/recyclerview/HorizontalDividerItemDecoration$MarginProvider;)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public marginResId(I)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 4
    invoke-virtual {p0, p1, p1}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->marginResId(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public marginResId(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;->margin(II)Lmega/widget/recyclerview/HorizontalDividerItemDecoration$Builder;

    move-result-object p0

    return-object p0
.end method
