.class public Lmega/widget/ImageSwitch;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/widget/ImageSwitch$OnStatusChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DISABLE_ALPHA:F = 0.3f

.field public static final DEFAULT_NORMAL_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ImageSwitch"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentDescriptionOff:Ljava/lang/String;

.field private mContentDescriptionOn:Ljava/lang/String;

.field private mDefaultSwitchResId:I

.field private mDisableAlpha:F

.field private mNormalAlpha:F

.field private mStateChangeLister:Lmega/widget/ImageSwitch$OnStatusChangeListener;

.field private mSwitchOffImageResId:I

.field private mSwitchOnImageResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmega/widget/ImageSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmega/widget/ImageSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lq0/a;

    const/16 p3, 0x18

    invoke-direct {p1, p3, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lmega/widget/ImageSwitch;->mClickListener:Landroid/view/View$OnClickListener;

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0, p2}, Lmega/widget/ImageSwitch;->initAttrs(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lmega/widget/ImageSwitch;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmega/widget/ImageSwitch;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo2/a;->c:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOn:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOff:Ljava/lang/String;

    const/4 v0, 0x3

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmega/widget/ImageSwitch;->mDisableAlpha:F

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lmega/widget/ImageSwitch;->mNormalAlpha:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmega/widget/ImageSwitch;->mDefaultSwitchResId:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmega/widget/ImageSwitch;->mSwitchOnImageResId:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmega/widget/ImageSwitch;->mSwitchOffImageResId:I

    iget v1, p0, Lmega/widget/ImageSwitch;->mDefaultSwitchResId:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lmega/widget/ImageSwitch;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget p1, p0, Lmega/widget/ImageSwitch;->mNormalAlpha:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lmega/widget/ImageSwitch;->mDisableAlpha:F

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lmega/widget/ImageSwitch;->mStateChangeLister:Lmega/widget/ImageSwitch$OnStatusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmega/widget/ImageSwitch$OnStatusChangeListener;->onStatusChange(Z)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOff:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOff:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lmega/widget/ImageSwitch;->mSwitchOnImageResId:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmega/widget/ImageSwitch;->mContentDescriptionOn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p0, Lmega/widget/ImageSwitch;->mSwitchOffImageResId:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    sget-object p0, Lmega/widget/ImageSwitch;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSelected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStateChangeLister(Lmega/widget/ImageSwitch$OnStatusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lmega/widget/ImageSwitch;->mStateChangeLister:Lmega/widget/ImageSwitch$OnStatusChangeListener;

    return-void
.end method
