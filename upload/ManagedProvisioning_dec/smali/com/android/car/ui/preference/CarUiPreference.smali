.class public Lcom/android/car/ui/preference/CarUiPreference;
.super Landroidx/preference/Preference;
.source "CarUiPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    sget v0, Lcom/android/car/ui/R$attr;->carUiPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    sget v0, Lcom/android/car/ui/R$style;->Preference_CarUi_Preference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    .line 45
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 61
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiPreference_showChevron:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    sget p2, Lcom/android/car/ui/R$styleable;->CarUiPreference_car_ui_ux_restricted:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->mUxRestricted:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setShowChevron(Z)V
    .locals 0

    return-void
.end method
