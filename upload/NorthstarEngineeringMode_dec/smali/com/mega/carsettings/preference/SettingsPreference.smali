.class public Lcom/mega/carsettings/preference/SettingsPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# instance fields
.field public final c:Lw0/f;

.field public final r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mega/carsettings/preference/AbsSettingsPreferenceController<",
            "Lcom/mega/carsettings/preference/SettingsPreference;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/mega/carsettings/preference/SettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const p3, 0x7f0402b6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lr0/a;->a:Lr0/a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lw0/f;

    invoke-direct {v1, p0, p2, p3, v0}, Lw0/f;-><init>(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/mega/carsettings/preference/SettingsPreference;->c:Lw0/f;

    .line 4
    invoke-static {p0, p2, p3, v0}, Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;->a(Landroidx/preference/Preference;Landroid/util/AttributeSet;II)Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/carsettings/preference/SettingsPreference;->r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    .line 5
    sget-object v1, Lcom/mega/carsettings/car/CarPreferenceStore;->d:Lcom/mega/carsettings/car/CarPreferenceStore;

    .line 6
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    sget-object v1, Lu0/a;->d:[I

    .line 7
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x10

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mega/carsettings/preference/SettingsPreference;->x:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object p0, p0, Lcom/mega/carsettings/preference/SettingsPreference;->r:Lcom/mega/carsettings/preference/AbsSettingsPreferenceController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/mega/carsettings/preference/SettingsPreference;->c:Lw0/f;

    invoke-virtual {v0, p1}, Lw0/f;->a(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mega/carsettings/preference/SettingsPreference;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method
