.class public final Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion;"
    }
.end annotation


# instance fields
.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mPropertiesMapped:Z

.field private mTintId:I

.field private mTintModeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mPropertiesMapped:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 3
    .param p1    # Landroid/view/inspector/PropertyMapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->backgroundTint:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/activity/k;->c(Landroid/view/inspector/PropertyMapper;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mBackgroundTintId:I

    .line 8
    .line 9
    sget v0, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/activity/k;->o(Landroid/view/inspector/PropertyMapper;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mBackgroundTintModeId:I

    .line 16
    .line 17
    sget v0, Landroidx/appcompat/R$attr;->tint:I

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/activity/k;->r(Landroid/view/inspector/PropertyMapper;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mTintId:I

    .line 24
    .line 25
    sget v0, Landroidx/appcompat/R$attr;->tintMode:I

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/activity/k;->s(Landroid/view/inspector/PropertyMapper;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mTintModeId:I

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mPropertiesMapped:Z

    .line 35
    .line 36
    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/inspector/PropertyReader;)V
    .registers 5
    .param p1    # Landroidx/appcompat/widget/AppCompatImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mPropertiesMapped:Z

    .line 2
    .line 3
    if-eqz v0, :cond_29

    .line 4
    .line 5
    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mBackgroundTintId:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->k(Landroid/view/inspector/PropertyReader;ILandroid/content/res/ColorStateList;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mBackgroundTintModeId:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->l(Landroid/view/inspector/PropertyReader;ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mTintId:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p2, v0, v1}, Landroidx/activity/k;->k(Landroid/view/inspector/PropertyReader;ILandroid/content/res/ColorStateList;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->mTintModeId:I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p2, v0, p1}, Landroidx/activity/k;->l(Landroid/view/inspector/PropertyReader;ILandroid/graphics/PorterDuff$Mode;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    invoke-static {}, Landroidx/activity/k;->f()Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inspector/PropertyReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
