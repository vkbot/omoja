.class public final Lcom/mega/carsettings/preference/MegaSegmentPreference$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/preference/MegaSegmentPreference$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mega/carsettings/preference/MegaSegmentPreference$c;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;

    invoke-direct {p0, p1}, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/mega/carsettings/preference/MegaSegmentPreference$c;

    return-object p0
.end method
