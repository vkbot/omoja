.class public Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionTextPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    :try_start_0
    sget v0, Lcom/android/car/ui/R$styleable;->CarUiTwoActionTextPreference_secondaryActionStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 75
    sget v1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionTextPreference_secondaryActionText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    .line 82
    sget p1, Lcom/android/car/ui/R$layout;->car_ui_preference_two_action_text:I

    goto :goto_0

    .line 83
    :cond_0
    sget p1, Lcom/android/car/ui/R$layout;->car_ui_preference_two_action_text_borderless:I

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->setLayoutResourceInternal(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    throw p0
.end method
