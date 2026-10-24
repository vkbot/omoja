.class public interface abstract Lcom/mega/carsettings/car/CarPreferenceStore$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/car/CarPreferenceStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->read()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()V
.end method

.method public c()I
    .locals 0

    invoke-interface {p0}, Lcom/mega/carsettings/car/CarPreferenceStore$a;->getId()I

    move-result p0

    return p0
.end method

.method public abstract getId()I
.end method

.method public abstract read()Ljava/lang/Object;
.end method
