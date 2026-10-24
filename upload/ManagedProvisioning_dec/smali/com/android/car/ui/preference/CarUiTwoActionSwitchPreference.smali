.class public Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 65
    sget p1, Lcom/android/car/ui/R$layout;->car_ui_preference_two_action_switch:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void
.end method
