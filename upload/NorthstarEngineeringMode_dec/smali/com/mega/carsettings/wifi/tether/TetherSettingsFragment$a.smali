.class public final Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;->a:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onStateChanged(II)V
    .locals 0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment$a;->a:Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;

    iget-boolean p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->k:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->k:Z

    sget p1, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->m:I

    const-string p1, "TetherSettingsFragment"

    const-string p2, "Restarting WifiAp due to prior config change."

    invoke-static {p1, p2}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->f:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/mega/carsettings/wifi/tether/TetherSettingsFragment;->d:Landroid/os/Handler;

    invoke-static {p1, p0}, Lq2/b;->a(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
