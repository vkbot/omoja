.class public Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;
.super Lcom/mega/carsettings/wifi/AccessPointListFragment;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public f:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/wifi/AccessPointListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    const v0, 0x7f0d00f4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    const p1, 0x7f120396

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    const-string p0, "access_points"

    return-object p0
.end method

.method public final s()I
    .locals 0

    const p0, 0x7f15000a

    return p0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    iget-object v1, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    new-instance v1, Landroidx/constraintlayout/core/state/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/mega/carsettings/wifi/AccessPointAvailableFragment;->f:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/AccessPointListFragment;->c:Landroidx/preference/PreferenceGroup;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method
