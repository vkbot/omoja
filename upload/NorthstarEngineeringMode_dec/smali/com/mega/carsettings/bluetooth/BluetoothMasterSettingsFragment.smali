.class public Lcom/mega/carsettings/bluetooth/BluetoothMasterSettingsFragment;
.super Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mega/carsettings/preference/AbsDashboardPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final q(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    new-instance v1, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;

    invoke-direct {v1, p1, p0}, Lcom/mega/carsettings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/mega/carsettings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final r()I
    .locals 0

    const p0, 0x7f150001

    return p0
.end method
