.class public Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/widget/recyclerview/FlexibleDividerDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

.field private mContext:Landroid/content/Context;

.field private mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

.field private mHasHead:Z

.field private mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

.field protected mResources:Landroid/content/res/Resources;

.field private mShowLastDivider:Z

.field private mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

.field private mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mHasHead:Z

    new-instance v1, Landroidx/constraintlayout/core/state/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    iput-object v1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    iput-boolean v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mShowLastDivider:Z

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static synthetic a(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$drawable$3(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    return-object p0
.end method

.method public static synthetic access$100(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    return-object p0
.end method

.method public static synthetic access$200(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    return-object p0
.end method

.method public static synthetic access$300(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    return-object p0
.end method

.method public static synthetic access$500(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;
    .locals 0

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    return-object p0
.end method

.method public static synthetic access$600(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mShowLastDivider:Z

    return p0
.end method

.method public static synthetic access$700(Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mHasHead:Z

    return p0
.end method

.method public static synthetic b(Landroid/graphics/Paint;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$paint$1(Landroid/graphics/Paint;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(IILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$size$4(IILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method private colorProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    return-object p0
.end method

.method public static synthetic d(ILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$new$0(ILandroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result p0

    return p0
.end method

.method private drawableProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mDrawableProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;

    return-object p0
.end method

.method public static synthetic e(IILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$color$2(IILandroidx/recyclerview/widget/RecyclerView;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(ZILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->lambda$visibilityDivider$5(ZILandroidx/recyclerview/widget/RecyclerView;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$color$2(IILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    return p0
.end method

.method private static synthetic lambda$drawable$3(Landroid/graphics/drawable/Drawable;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$new$0(ILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$paint$1(Landroid/graphics/Paint;ILandroidx/recyclerview/widget/RecyclerView;)Landroid/graphics/Paint;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$size$4(IILandroidx/recyclerview/widget/RecyclerView;)I
    .locals 0

    return p0
.end method

.method private static synthetic lambda$visibilityDivider$5(ZILandroidx/recyclerview/widget/RecyclerView;Z)Z
    .locals 0

    return p0
.end method

.method private paintProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    return-object p0
.end method

.method private sizeProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    return-object p0
.end method

.method private visibilityProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mVisibilityProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;

    return-object p0
.end method


# virtual methods
.method public checkBuilderParams()V
    .locals 1

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mPaintProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mColorProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;

    if-nez v0, :cond_1

    iget-object p0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mSizeProvider:Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use setStrokeWidth method of Paint class to specify line size. Do not provider SizeProvider if you set PaintProvider."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use setColor method of Paint class to specify line color. Do not provider ColorProvider if you set PaintProvider."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public color(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance v0, Lmega/widget/recyclerview/b;

    invoke-direct {v0, p1}, Lmega/widget/recyclerview/b;-><init>(I)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->colorProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$ColorProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public colorResId(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->color(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public drawable(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->drawable(Landroid/graphics/drawable/Drawable;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public drawable(Landroid/graphics/drawable/Drawable;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 2
    new-instance v0, Ls0/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Ls0/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->drawableProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$DrawableProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public hasHeadDivider(Z)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mHasHead:Z

    return-object p0
.end method

.method public paint(Landroid/graphics/Paint;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ls0/e;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Ls0/e;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->paintProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$PaintProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public showLastDivider()Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mShowLastDivider:Z

    return-object p0
.end method

.method public size(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/core/state/b;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/core/state/b;-><init>(I)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->sizeProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$SizeProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public sizeResId(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->size(I)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public visibilityDivider(Z)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    new-instance v0, Lmega/widget/recyclerview/a;

    invoke-direct {v0, p1}, Lmega/widget/recyclerview/a;-><init>(Z)V

    invoke-direct {p0, v0}, Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;->visibilityProvider(Lmega/widget/recyclerview/FlexibleDividerDecoration$VisibilityProvider;)Lmega/widget/recyclerview/FlexibleDividerDecoration$Builder;

    move-result-object p0

    return-object p0
.end method
