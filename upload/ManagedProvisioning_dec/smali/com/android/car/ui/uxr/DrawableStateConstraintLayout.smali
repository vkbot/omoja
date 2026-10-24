.class public Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "DrawableStateConstraintLayout.java"

# interfaces
.implements Lcom/android/car/ui/uxr/DrawableStateView;


# instance fields
.field private mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDrawableState$0(Ljava/lang/Integer;)[I
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onCreateDrawableState$0$DrawableStateConstraintLayout(Ljava/lang/Integer;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->lambda$onCreateDrawableState$0(Ljava/lang/Integer;)[I

    move-result-object p0

    return-object p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/car/ui/uxr/DrawableStateUtil;

    invoke-direct {v0, p0}, Lcom/android/car/ui/uxr/DrawableStateUtil;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    new-instance v1, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateConstraintLayout$bLH5f2aBGw97AlLTe_6MqifwU9s;

    invoke-direct {v1, p0}, Lcom/android/car/ui/uxr/-$$Lambda$DrawableStateConstraintLayout$bLH5f2aBGw97AlLTe_6MqifwU9s;-><init>(Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/car/ui/uxr/DrawableStateUtil;->onCreateDrawableState(ILjava/util/function/Function;)[I

    move-result-object p0

    return-object p0
.end method

.method public setExtraDrawableState([I[I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/car/ui/uxr/DrawableStateUtil;

    invoke-direct {v0, p0}, Lcom/android/car/ui/uxr/DrawableStateUtil;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/uxr/DrawableStateConstraintLayout;->mUtil:Lcom/android/car/ui/uxr/DrawableStateUtil;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/uxr/DrawableStateUtil;->setExtraDrawableState([I[I)V

    return-void
.end method
