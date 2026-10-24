.class public Lcom/android/car/ui/recyclerview/CarUiContentListItem;
.super Lcom/android/car/ui/recyclerview/CarUiListItem;
.source "CarUiContentListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;,
        Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

.field private mBody:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsActionDividerVisible:Z

.field private mIsActivated:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private mOnCheckedChangeListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;

.field private mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

.field private mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

.field private mSupplementalIcon:Landroid/graphics/drawable/Drawable;

.field private mSupplementalIconOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/android/car/ui/recyclerview/CarUiListItem;-><init>()V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    .line 120
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    .line 121
    sget-object p1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;->STANDARD:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    return-object p0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mBody:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-object p0
.end method

.method public getPrimaryIconType()Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mPrimaryIconType:Lcom/android/car/ui/recyclerview/CarUiContentListItem$IconType;

    return-object p0
.end method

.method public getSupplementalIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->ICON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mSupplementalIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSupplementalIconOnClickListener()Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mSupplementalIconOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isActionDividerVisible()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActionDividerVisible:Z

    return p0
.end method

.method public isActivated()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActivated:Z

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    return p0
.end method

.method public setActivated(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsActivated:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mAction:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->CHECK_BOX:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->SWITCH:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;->RADIO_BUTTON:Lcom/android/car/ui/recyclerview/CarUiContentListItem$Action;

    if-ne v0, v1, :cond_2

    .line 244
    :cond_1
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsChecked:Z

    .line 246
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnCheckedChangeListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0, p0, p1}, Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnCheckedChangeListener;->onCheckedChanged(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Z)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIsEnabled:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnItemClickedListener(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mOnClickListener:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
