.class public final synthetic Ls0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

.field public final synthetic r:Ld/g;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;Ld/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/g;->c:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Ls0/g;->r:Ld/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget v0, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->l:I

    iget-object v0, p0, Ls0/g;->c:Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;

    iget-object p0, p0, Ls0/g;->r:Ld/g;

    invoke-virtual {v0, p0}, Lcom/mega/carsettings/bluetooth/DeviceListPreferenceFragment;->t(Ld/g;)V

    return-void
.end method
