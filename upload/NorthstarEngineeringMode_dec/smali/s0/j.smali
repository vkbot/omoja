.class public final Ls0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/g$a;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/j;->b:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Ls0/j;->a:Ljava/lang/Runnable;

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

    iget-object v2, p0, Ls0/j;->b:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v2, v1}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "DeviceListPreferenceFragment"

    invoke-static {v3, v1}, Lmega/log/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ld/g;->l(Ld/g$a;)Z

    const/4 p1, 0x0

    iput-object p1, v2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->i:Ld/g;

    iput-object p1, v2, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->j:Ls0/j;

    iget-object p0, p0, Ls0/j;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
