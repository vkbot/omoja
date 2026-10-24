.class public final Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/car/livedata/CarPropertyObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/carsettings/preference/AbsCarPreferenceFragment;->q(Landroidx/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmega/car/livedata/CarPropertyObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroidx/preference/Preference;

.field public final synthetic c:Lcom/mega/carsettings/car/CarPreferenceStore$a;


# direct methods
.method public constructor <init>(Landroidx/preference/Preference;Lcom/mega/carsettings/car/CarPreferenceStore$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->b:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->c:Lcom/mega/carsettings/car/CarPreferenceStore$a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->a:Z

    return-void
.end method


# virtual methods
.method public final onInvalid(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->a:Z

    iget-object v0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->b:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    instance-of v1, v0, Lt0/g;

    if-eqz v1, :cond_0

    check-cast v0, Lt0/g;

    iget-object p0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->c:Lcom/mega/carsettings/car/CarPreferenceStore$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lt0/g;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onValid(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->a:Z

    iget-object v1, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->b:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->a:Z

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    instance-of v0, v1, Lt0/g;

    if-eqz v0, :cond_1

    check-cast v1, Lt0/g;

    iget-object p0, p0, Lcom/mega/carsettings/preference/AbsCarPreferenceFragment$a;->c:Lcom/mega/carsettings/car/CarPreferenceStore$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p1}, Lt0/g;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
