.class public final Landroidx/appcompat/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    return-object p0
.end method
