.class public final Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;->a:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final a(Ld/g;)V
    .locals 4

    invoke-virtual {p1}, Ld/g;->h()Z

    move-result v0

    sget v1, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->l:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, " is"

    goto :goto_0

    :cond_0
    const-string v2, " not"

    :goto_0
    const-string v3, " busy"

    invoke-static {v1, v2, v3}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment$a;->a:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v2, v1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DeviceListPreferenceFragment"

    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ld/g;->l(Ld/g$a;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "name="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isConnected="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ld/g;->i()Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Ld/g;->k1:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ld/g;->i()Z

    :goto_1
    iget-object p0, v2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p0, p0, Ld/m;->a:Ld/l;

    invoke-virtual {p0}, Ld/l;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->f:Ld/m;

    iget-object p0, p0, Ld/m;->a:Ld/l;

    invoke-virtual {p0}, Ld/l;->d()V

    :cond_3
    return-void
.end method
