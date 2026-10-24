.class public Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;
.super Landroidx/preference/DialogPreference;
.source "CarUiSeekBarDialogPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/DialogFragmentCallbacks;


# instance fields
.field private mUxRestricted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->mUxRestricted:Z

    .line 75
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiSeekBarDialogPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 84
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_seekbar_dialog:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 85
    sget v0, Lcom/android/car/ui/R$string;->car_ui_dialog_preference_positive:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 86
    sget v0, Lcom/android/car/ui/R$string;->car_ui_dialog_preference_negative:I

    invoke-virtual {p0, v0}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method
