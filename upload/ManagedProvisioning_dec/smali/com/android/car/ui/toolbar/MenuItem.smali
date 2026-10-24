.class public Lcom/android/car/ui/toolbar/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/toolbar/MenuItem$Listener;,
        Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;,
        Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;,
        Lcom/android/car/ui/toolbar/MenuItem$Builder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

.field private mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:I

.field private final mIsActivatable:Z

.field private mIsActivated:Z

.field private final mIsCheckable:Z

.field private mIsChecked:Z

.field private mIsEnabled:Z

.field private final mIsPrimary:Z

.field private final mIsSearch:Z

.field private final mIsTinted:Z

.field private mIsVisible:Z

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/ui/toolbar/MenuItem$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

.field private final mShowIconAndTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUxRestrictions:I

.field private final mUxRestrictionsListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;


# direct methods
.method private constructor <init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    .line 76
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItem$L8uyPLsON8uHfaoUZrFMW0-X32Y;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItem$L8uyPLsON8uHfaoUZrFMW0-X32Y;-><init>(Lcom/android/car/ui/toolbar/MenuItem;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictionsListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    .line 88
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mId:I

    .line 90
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsCheckable:Z

    .line 91
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivatable:Z

    .line 92
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$600(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    .line 95
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$700(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    .line 96
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$800(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsEnabled:Z

    .line 97
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$900(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    .line 98
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1000(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    .line 99
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1100(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    .line 100
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1200(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsSearch:Z

    .line 101
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1300(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mShowIconAndTitle:Z

    .line 102
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1400(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsTinted:Z

    .line 103
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1500(Lcom/android/car/ui/toolbar/MenuItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsPrimary:Z

    .line 104
    invoke-static {p1}, Lcom/android/car/ui/toolbar/MenuItem$Builder;->access$1600(Lcom/android/car/ui/toolbar/MenuItem$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictions:I

    .line 106
    iget-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->getInstance(Landroid/content/Context;)Lcom/android/car/ui/utils/CarUxRestrictionsUtil;

    move-result-object p1

    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictionsListener:Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;

    invoke-virtual {p1, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->register(Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;Lcom/android/car/ui/toolbar/MenuItem$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem;-><init>(Lcom/android/car/ui/toolbar/MenuItem$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/car/ui/toolbar/MenuItem$Builder;
    .locals 1

    .line 599
    new-instance v0, Lcom/android/car/ui/toolbar/MenuItem$Builder;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result v0

    .line 80
    iput-object p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    .line 82
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    :cond_0
    return-void
.end method

.method private update()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/MenuItem$Listener;

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$Listener;->onMenuItemChanged(Lcom/android/car/ui/toolbar/MenuItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayBehavior()Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mDisplayBehavior:Lcom/android/car/ui/toolbar/MenuItem$DisplayBehavior;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mId:I

    return p0
.end method

.method public getOnClickListener()Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isActivatable()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivatable:Z

    return p0
.end method

.method public isActivated()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    return p0
.end method

.method public isCheckable()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsCheckable:Z

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 149
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsEnabled:Z

    return p0
.end method

.method public isPrimary()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsPrimary:Z

    return p0
.end method

.method isRestricted()Z
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mUxRestrictions:I

    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mCurrentRestrictions:Landroid/car/drivingstate/CarUxRestrictions;

    invoke-static {v0, p0}, Lcom/android/car/ui/utils/CarUxRestrictionsUtil;->isRestricted(ILandroid/car/drivingstate/CarUxRestrictions;)Z

    move-result p0

    return p0
.end method

.method isSearch()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsSearch:Z

    return p0
.end method

.method public isShowingIconAndTitle()Z
    .locals 0

    .line 243
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mShowIconAndTitle:Z

    return p0
.end method

.method public isTinted()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsTinted:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    return p0
.end method

.method public synthetic lambda$new$0$MenuItem(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/MenuItem;->lambda$new$0(Landroid/car/drivingstate/CarUxRestrictions;)V

    return-void
.end method

.method public performClick()V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isRestricted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 265
    iget-object p0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/car/ui/R$string;->car_ui_restricted_while_driving:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivatable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivated()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem;->setActivated(Z)V

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/car/ui/toolbar/MenuItem;->setChecked(Z)V

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mOnClickListener:Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;

    if-eqz v0, :cond_4

    .line 279
    invoke-interface {v0, p0}, Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;->onClick(Lcom/android/car/ui/toolbar/MenuItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isActivatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsActivated:Z

    .line 204
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setActivated() on a non-activatable MenuItem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/car/ui/toolbar/MenuItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsChecked:Z

    .line 163
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void

    .line 158
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call setChecked() on a non-checkable MenuItem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setListener(Lcom/android/car/ui/toolbar/MenuItem$Listener;)V
    .locals 1

    .line 632
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/ui/toolbar/MenuItem;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/MenuItem;->mIsVisible:Z

    .line 179
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/MenuItem;->update()V

    return-void
.end method
