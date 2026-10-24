.class public Lcom/mega/carsettings/preference/MegaSegmentPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/preference/MegaSegmentPreference$b;,
        Lcom/mega/carsettings/preference/MegaSegmentPreference$a;,
        Lcom/mega/carsettings/preference/MegaSegmentPreference$c;
    }
.end annotation


# instance fields
.field public Z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RadioGroup;",
            ">;"
        }
    .end annotation
.end field

.field public b1:I

.field public final c:Lcom/mega/carsettings/preference/MegaSegmentPreference$b;

.field public final c1:F

.field public final d1:I

.field public final e1:I

.field public final f1:I

.field public final g1:I

.field public final h1:Z

.field public final i1:Lw0/f;

.field public final j1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mega/carsettings/preference/AbsSettingsPreferenceController<",
            "Lcom/mega/carsettings/preference/MegaSegmentPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final k1:Z

.field public final r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

.field public final x:[I

.field public final y:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const p3, 0x7f0402b8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v1, Lcom/mega/carsettings/preference/MegaSegmentPreference$b;

    invoke-direct {v1, p0}, Lcom/mega/carsettings/preference/MegaSegmentPreference$b;-><init>(Lcom/mega/carsettings/preference/MegaSegmentPreference;)V

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c:Lcom/mega/carsettings/preference/MegaSegmentPreference$b;

    const/4 v1, -0x1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    sget-object v2, Lr0/a;->a:Lr0/a;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v2, Lw0/f;

    invoke-direct {v2, p0, p2, p3, v0}, Lw0/f;-><init>(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->i1:Lw0/f;

    .line 5
    invoke-static {p0, p2, p3, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;->a(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    move-result-object v2

    iput-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->j1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    sget-object v2, Lu0/a;->b:[I

    .line 6
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/16 v2, 0x8

    const/high16 v3, 0x42b40000    # 90.0f

    .line 8
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c1:F

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 11
    new-array v3, v2, [Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    iput-object v3, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    .line 12
    new-instance v5, Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    .line 13
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 14
    aput-object v5, v4, v3

    .line 15
    :try_start_0
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v5, Lcom/mega/carsettings/preference/MegaSegmentPreference$a;->a:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v4, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    .line 16
    aget-object v4, v4, v3

    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/mega/carsettings/preference/MegaSegmentPreference$a;->b:Ljava/lang/CharSequence;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_1
    new-array p3, v0, [Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    iput-object p3, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    :goto_2
    const/4 p3, 0x1

    .line 18
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->x:[I

    .line 20
    array-length v4, v2

    if-lez v4, :cond_4

    array-length v2, v2

    iget-object v4, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    array-length v4, v4

    if-ne v2, v4, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Segment\'s entries and values must have the same size."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput-object v3, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->x:[I

    :cond_4
    :goto_3
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->y:[Ljava/lang/String;

    .line 24
    array-length v2, p1

    if-lez v2, :cond_7

    array-length p1, p1

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    array-length v2, v2

    if-ne p1, v2, :cond_5

    goto :goto_4

    .line 25
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Segment\'s entries and contentDescription values must have the same size."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iput-object v3, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->y:[Ljava/lang/String;

    :cond_7
    :goto_4
    const/4 p1, 0x6

    .line 26
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d1:I

    const/4 p1, 0x7

    const v1, 0x7f0d00fc

    .line 27
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->e1:I

    const/4 p1, 0x4

    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->f1:I

    const/4 p1, 0x5

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->g1:I

    const/4 p1, 0x3

    .line 30
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->h1:Z

    .line 31
    sget-object p1, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p3, 0x2a

    .line 33
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->k1:Z

    .line 34
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    sget-object p1, Lcom/mega/carsettings/car/CarPreferenceStore;->d:Lcom/mega/carsettings/car/CarPreferenceStore;

    .line 36
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 37
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "must be Float or Integer, but found "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 10

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->f1:I

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->g1:I

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->Z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, -0x1

    if-ge v6, v3, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    iget v9, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_1
    if-eq v6, v7, :cond_7

    move p0, v5

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-ge p0, v4, :cond_8

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    if-nez v6, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    if-ne v6, v4, :cond_4

    add-int/lit8 v4, v3, -0x2

    if-ne p0, v4, :cond_4

    :cond_3
    invoke-virtual {v7, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    :cond_4
    if-eq p0, v6, :cond_6

    add-int/lit8 v4, v6, -0x1

    if-ne p0, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v7, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_7
    move p0, v5

    :goto_5
    add-int/lit8 v1, v3, -0x1

    if-ge p0, v1, :cond_8

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_8
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->x:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    if-ne v2, v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    :goto_2
    return-void
.end method

.method public final d(I)V
    .locals 3

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    new-instance v1, Lw0/e;

    invoke-direct {v1, p0, p1}, Lw0/e;-><init>(Lcom/mega/carsettings/preference/MegaSegmentPreference;I)V

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->Z:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->check(I)V

    invoke-virtual {p0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b()V

    iget-object p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c:Lcom/mega/carsettings/preference/MegaSegmentPreference$b;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-void
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->h1:Z

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final notifyChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->j1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->i1:Lw0/f;

    invoke-virtual {v0, p1}, Lw0/f;->a(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    const v1, 0x7f0a0340

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->Z:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->r:[Lcom/mega/carsettings/preference/MegaSegmentPreference$a;

    array-length v3, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    const-string p1, "MegaSegmentPreference"

    const-string v2, "had add"

    invoke-static {p1, v2}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->e(Landroid/view/View;Z)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->g1:I

    iget v7, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->f1:I

    if-ge v5, v3, :cond_8

    iget-object v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget v9, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->e1:I

    invoke-virtual {v8, v9, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iget-object v9, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->x:[I

    if-eqz v9, :cond_2

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setId(I)V

    :goto_1
    iget v9, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c1:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMinWidth(I)V

    aget-object v9, v2, v5

    iget-object v10, v9, Lcom/mega/carsettings/preference/MegaSegmentPreference$a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_3

    invoke-virtual {v8, v10}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v9, v9, Lcom/mega/carsettings/preference/MegaSegmentPreference$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v9, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->y:[Ljava/lang/String;

    if-eqz v9, :cond_4

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v9, -0x1

    iget v10, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d1:I

    if-eq v10, v9, :cond_6

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v7, :cond_7

    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_7

    if-nez v6, :cond_7

    invoke-virtual {v8, v4, v4, v7, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iget p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->check(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->e(Landroid/view/View;Z)V

    if-eqz v7, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b()V

    :cond_9
    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c:Lcom/mega/carsettings/preference/MegaSegmentPreference$b;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :goto_4
    return-void
.end method

.method public final onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, -0x1

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;->c:I

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->d(I)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;

    invoke-direct {v1, v0}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iget p0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->b1:I

    iput p0, v1, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;->c:I

    return-object v1
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->k1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ly0/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lq0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lq0/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final persistInt(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->i1:Lw0/f;

    iget-boolean v0, v0, Lw0/f;->i:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->Z:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference;->Z:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mega/carsettings/preference/MegaSegmentPreference;->e(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
