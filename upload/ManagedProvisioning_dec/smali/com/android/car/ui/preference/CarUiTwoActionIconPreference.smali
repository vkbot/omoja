.class public Lcom/android/car/ui/preference/CarUiTwoActionIconPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionIconPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionIconPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    :try_start_0
    sget v0, Lcom/android/car/ui/R$styleable;->CarUiTwoActionIconPreference_secondaryActionIcon:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    sget p1, Lcom/android/car/ui/R$layout;->car_ui_preference_two_action_icon:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw p0
.end method
