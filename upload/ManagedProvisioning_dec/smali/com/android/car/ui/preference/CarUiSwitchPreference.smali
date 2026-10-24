.class public Lcom/android/car/ui/preference/CarUiSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "CarUiSwitchPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    .line 55
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget v0, Lcom/android/car/ui/R$styleable;->CarUiPreference_car_ui_ux_restricted:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->mUxRestricted:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
