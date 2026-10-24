.class public Lcom/android/car/ui/preference/CarUiRadioButtonPreference;
.super Landroidx/preference/TwoStatePreference;
.source "CarUiRadioButtonPreference.java"


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 55
    sget v0, Lcom/android/car/ui/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->mUxRestricted:Z

    .line 45
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 64
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_preference:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 65
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_radio_button_preference_widget:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method
