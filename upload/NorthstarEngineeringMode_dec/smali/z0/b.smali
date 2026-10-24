.class public final synthetic Lz0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Lcom/mega/carsettings/wifi/WifiSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/carsettings/wifi/WifiSettingsFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lz0/b;->c:I

    iput-object p1, p0, Lz0/b;->r:Lcom/mega/carsettings/wifi/WifiSettingsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lz0/b;->c:I

    iget-object p0, p0, Lz0/b;->r:Lcom/mega/carsettings/wifi/WifiSettingsFragment;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiSettings force update APs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->d:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiSettingsFragment"

    invoke-static {v0, p0}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/mega/carsettings/wifi/WifiSettingsFragment;->w()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
