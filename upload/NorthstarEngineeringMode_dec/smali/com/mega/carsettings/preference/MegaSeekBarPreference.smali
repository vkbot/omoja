.class public Lcom/mega/carsettings/preference/MegaSeekBarPreference;
.super Landroidx/preference/ExSeekBarPreference;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# instance fields
.field public final Z:Ljava/lang/String;

.field public final b1:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final c1:Z

.field public final d1:I

.field public final e1:I

.field public final f1:I

.field public final g1:Z

.field public final h1:Lw0/f;

.field public final i1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mega/carsettings/preference/AbsSettingsPreferenceController<",
            "Lcom/mega/carsettings/preference/MegaSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final j1:Ljava/lang/String;

.field public final k1:Ljava/lang/String;

.field public final l1:Z

.field public final m1:Ljava/lang/String;

.field public final n1:Z

.field public final o1:I

.field public p1:I

.field public q1:Z

.field public r:Landroid/widget/SeekBar;

.field public final x:I

.field public y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/mega/carsettings/preference/MegaSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const p3, 0x7f0402b7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/ExSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->c:Landroid/content/Context;

    sget-object v1, Lu0/a;->a:[I

    .line 2
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0xb

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->x:I

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->d1:I

    const/16 v1, 0xa

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->Z:Ljava/lang/String;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->b1:Ljava/lang/String;

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->c1:Z

    const/16 v1, 0x9

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    const/4 v1, 0x7

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    const/4 v1, 0x6

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->g1:Z

    .line 11
    sget-object v1, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v3, 0x2a

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->n1:Z

    const/4 v1, 0x4

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->j1:Ljava/lang/String;

    const/4 v1, 0x3

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->k1:Ljava/lang/String;

    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->m1:Ljava/lang/String;

    const/4 v1, 0x5

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->l1:Z

    .line 16
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->o1:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lr0/a;->a:Lr0/a;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p1, Lw0/f;

    invoke-direct {p1, p0, p2, p3, v0}, Lw0/f;-><init>(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->h1:Lw0/f;

    .line 20
    invoke-static {p0, p2, p3, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;->a(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->i1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    .line 21
    sget-object p1, Lcom/mega/carsettings/car/CarPreferenceStore;->d:Lcom/mega/carsettings/car/CarPreferenceStore;

    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p1, Ljava/lang/Float;

    const-string v1, "MegaSeekBarPreference"

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    iget-boolean v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->g1:Z

    iget v3, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    iget v4, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result v5

    div-int/2addr v5, v3

    :goto_1
    add-int/2addr v5, v4

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/SeekBarPreference;->getValue()I

    move-result v5

    div-int/2addr v5, v3

    mul-int/2addr v5, v3

    goto :goto_1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "syncCarPropStatus = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, p1, :cond_3

    sub-int/2addr p1, v4

    if-eqz v2, :cond_2

    mul-int/2addr p1, v3

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "status must be Integer or Float"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callChangeListener:newValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSeekBarPreference"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->g1:Z

    iget v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    iget v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    :goto_0
    add-int/2addr p1, v1

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p1, v2

    mul-int/2addr p1, v2

    goto :goto_0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0
    .param p1    # Landroidx/preference/PreferenceManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->i1:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    const v0, 0x7f0a033e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->y:Landroid/widget/TextView;

    iget v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->d1:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->y:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0a033f

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->b1:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    invoke-super {p0, p1}, Landroidx/preference/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->h1:Lw0/f;

    invoke-virtual {v0, p1}, Lw0/f;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a033d

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->r:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_3
    iget-object v0, v0, Lw0/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->m1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->r:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->r:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->l1:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->r:Landroid/widget/SeekBar;

    new-instance v1, Lcom/mega/carsettings/preference/MegaSeekBarPreference$a;

    invoke-direct {v1, p0}, Lcom/mega/carsettings/preference/MegaSeekBarPreference$a;-><init>(Lcom/mega/carsettings/preference/MegaSeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v0, 0x7f0a00a4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->k1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lq0/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lq0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f0a00a5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->j1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lw0/d;

    invoke-direct {v1, v3, p0}, Lw0/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_8
    return-void
.end method

.method public final onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->n1:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ly0/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final persistInt(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->g1:Z

    iget v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->e1:I

    iget v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    if-eqz v0, :cond_0

    div-int v0, p1, v2

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    div-int v0, p1, v2

    mul-int/2addr v0, v2

    goto :goto_0

    :goto_1
    const-string/jumbo v1, "persistInt:value="

    const-string v2, " actualValue="

    const-string v3, " mRealChange="

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/activity/result/a;->i(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MegaSeekBarPreference"

    invoke-static {v1, p1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    iget-object p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->h1:Lw0/f;

    iget-boolean p1, p1, Lw0/f;->i:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-super {p0, v0}, Landroidx/preference/Preference;->persistInt(I)Z

    move-result p0

    return p0
.end method

.method public final updateLabelValue(I)V
    .locals 5

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->f1:I

    div-int v1, p1, v0

    iget v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->p1:I

    div-int/2addr v2, v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    div-int v1, p1, v0

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->p1:I

    :cond_2
    const-string/jumbo v1, "updateLabelValue:value="

    const-string v2, " mRealChange="

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->q1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mValueAlongProgressChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->c1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsDivStep="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->g1:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mStep="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLastValue="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->p1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MegaSeekBarPreference"

    invoke-static {v4, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_3

    div-int/2addr p1, v0

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->p1:I

    :goto_1
    iget v0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->x:I

    if-lez v0, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSeekBarPreference;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method
