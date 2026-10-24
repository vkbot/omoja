.class public abstract Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "CarUiTwoActionBasePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static varargs disallowResourceIds(Landroid/content/res/TypedArray;[I)V
    .locals 4

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 149
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting this attribute is not allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPreference;->setShowChevron(Z)V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/car/ui/R$styleable;->CarUiTwoActionBasePreference:[I

    .line 67
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [I

    .line 69
    sget v3, Lcom/android/car/ui/R$styleable;->CarUiTwoActionBasePreference_layout:I

    aput v3, v2, v0

    sget v0, Lcom/android/car/ui/R$styleable;->CarUiTwoActionBasePreference_android_layout:I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x2

    sget v4, Lcom/android/car/ui/R$styleable;->CarUiTwoActionBasePreference_widgetLayout:I

    aput v4, v2, v0

    const/4 v0, 0x3

    sget v4, Lcom/android/car/ui/R$styleable;->CarUiTwoActionBasePreference_android_widgetLayout:I

    aput v4, v2, v0

    invoke-static {v1, v2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->disallowResourceIds(Landroid/content/res/TypedArray;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/car/ui/R$styleable;->CarUiTwoActionPreference:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 82
    :try_start_1
    sget p1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionPreference_actionShown:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 84
    sget p1, Lcom/android/car/ui/R$styleable;->CarUiTwoActionPreference_actionEnabled:I

    invoke-virtual {p0, p1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    throw p1

    :catchall_1
    move-exception p0

    .line 75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw p0
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 139
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected setLayoutResourceInternal(I)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0

    .line 144
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
