.class public final Lcom/mega/carsettings/preference/MegaSegmentPreference$c;
.super Landroidx/preference/Preference$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/carsettings/preference/MegaSegmentPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mega/carsettings/preference/MegaSegmentPreference$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mega/carsettings/preference/MegaSegmentPreference$c$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;->c:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Lcom/mega/carsettings/preference/MegaSegmentPreference$c;->c:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
