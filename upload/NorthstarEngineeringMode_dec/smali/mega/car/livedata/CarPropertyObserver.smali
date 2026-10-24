.class public interface abstract Lmega/car/livedata/CarPropertyObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lmega/car/hardware/CarPropertyValue<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CarPropertyObserver"


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    invoke-interface {p0, p1}, Lmega/car/livedata/CarPropertyObserver;->onChanged(Lmega/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method public onChanged(Lmega/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmega/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Lmega/car/livedata/CarPropertyObserver;->onInvalid(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {p0, v0}, Lmega/car/livedata/CarPropertyObserver;->onInvalid(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getStatus()I

    move-result v0

    const-string v1, "ClassCastException:"

    if-nez v0, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lmega/car/livedata/CarPropertyObserver;->onValid(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Lmega/car/MegaCar;->propIdToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lmega/car/livedata/CarPropertyObserver;->onInvalid(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 9
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmega/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Lmega/car/MegaCar;->propIdToName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmega/log/MLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInvalid(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onValid(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
