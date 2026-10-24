.class public Lcom/mega/carsettings/preference/MegaSwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/carsettings/preference/MegaSwitchPreference$a;
    }
.end annotation


# instance fields
.field public final Z:Ljava/lang/String;

.field public final b1:Ljava/lang/String;

.field public final c:Lw0/f;

.field public c1:Landroid/view/View;

.field public final d1:Lcom/mega/carsettings/preference/MegaSwitchPreference$a;

.field public final e1:Ljava/lang/CharSequence;

.field public final f1:Ljava/lang/CharSequence;

.field public g1:Landroid/view/View;

.field public final h1:Z

.field public i1:Landroid/view/View;

.field public final r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mega/carsettings/preference/AbsSettingsPreferenceController<",
            "Lcom/mega/carsettings/preference/MegaSwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/mega/carsettings/preference/MegaSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0402ba

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/mega/carsettings/preference/MegaSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mega/carsettings/preference/MegaSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Lcom/mega/carsettings/preference/MegaSwitchPreference$a;

    invoke-direct {v0, p0}, Lcom/mega/carsettings/preference/MegaSwitchPreference$a;-><init>(Lcom/mega/carsettings/preference/MegaSwitchPreference;)V

    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->d1:Lcom/mega/carsettings/preference/MegaSwitchPreference$a;

    sget-object v0, Lu0/a;->c:[I

    .line 3
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    const/16 v0, 0xc

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->e1:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    const/16 v0, 0xb

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->f1:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    const/4 v0, 0x2

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setDisableDependentsState(Z)V

    sget-object v0, Lr0/a;->a:Lr0/a;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance v0, Lw0/f;

    invoke-direct {v0, p0, p2, p3, p4}, Lw0/f;-><init>(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c:Lw0/f;

    .line 21
    invoke-static {p0, p2, p3, p4}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;->a(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    const/16 p2, 0xe

    const/4 p3, -0x1

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->x:I

    const/16 p2, 0xd

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->y:I

    .line 24
    sget-object p2, Lcom/mega/carsettings/car/CarPreferenceStore;->c:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/16 p3, 0x2a

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->h1:Z

    const/4 p2, 0x7

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->Z:Ljava/lang/String;

    const/4 p2, 0x6

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->b1:Ljava/lang/String;

    .line 27
    sget-object p2, Lcom/mega/carsettings/car/CarPreferenceStore;->d:Lcom/mega/carsettings/car/CarPreferenceStore;

    .line 28
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->x:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->setChecked(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "status must be Integer or Boolean"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MegaSwitchPreference"

    invoke-static {p1, p0}, Lmega/log/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->y:I

    if-eq v2, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c1:Landroid/view/View;

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->i1:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->syncSwitchView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c:Lw0/f;

    invoke-virtual {v0, p1}, Lw0/f;->a(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, v0, Lw0/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->b1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->Z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init content description = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MegaSwitchPreference"

    invoke-static {v2, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->i1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->g1:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->g1:Landroid/view/View;

    :cond_3
    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->g1:Landroid/view/View;

    if-eqz p0, :cond_4

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final onClick()V
    .locals 5

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c1:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const v1, 0x1020040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->syncSwitchView(Landroid/view/View;)V

    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq v4, p0, :cond_6

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onSetInitialValue(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->h1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ly0/a;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/motion/widget/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/motion/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final persistBoolean(Z)Z
    .locals 3

    iget v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->y:I

    if-eq v2, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mega/carsettings/preference/MegaSwitchPreference;->persistInt(I)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c:Lw0/f;

    iget-boolean v0, v0, Lw0/f;->i:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-super {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    move-result p0

    return p0
.end method

.method public final persistInt(I)Z
    .locals 1

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->c:Lw0/f;

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

.method public final setChecked(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->Z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->b1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->i1:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "switch content description = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MegaSwitchPreference"

    invoke-static {v1, v0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->i1:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final syncSwitchView(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    instance-of v1, p1, Landroid/widget/Switch;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->e1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->f1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    :cond_1
    instance-of v1, p1, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->e1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->f1:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    :cond_2
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    if-eqz v0, :cond_4

    check-cast p1, Landroid/widget/CompoundButton;

    iget-object p0, p0, Lcom/mega/carsettings/preference/MegaSwitchPreference;->d1:Lcom/mega/carsettings/preference/MegaSwitchPreference$a;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    return-void
.end method
