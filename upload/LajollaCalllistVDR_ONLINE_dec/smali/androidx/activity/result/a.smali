.class public final Landroidx/activity/result/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/activity/result/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/activity/result/a;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;-><init>(I)V

    new-array v3, v0, [I

    new-array v4, v0, [Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readBooleanArray([Z)V

    :goto_0
    if-ge v1, v0, :cond_0

    aget p1, v3, v1

    aget-boolean v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_1
    new-instance v0, Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/badge/BadgeDrawable$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_3
    new-instance v0, Landroidx/activity/result/IntentSenderRequest;

    invoke-direct {v0, p1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :pswitch_4
    new-instance v0, Landroidx/activity/result/ActivityResult;

    invoke-direct {v0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseIntArray;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/ParcelableSparseIntArray;-><init>(I)V

    new-array v3, v0, [I

    new-array v4, v0, [I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    :goto_2
    if-ge v1, v0, :cond_1

    aget p1, v3, v1

    aget v5, v4, v1

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/result/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    return-object p1

    :pswitch_1
    new-array p1, p1, [Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    return-object p1

    :pswitch_2
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Landroidx/activity/result/IntentSenderRequest;

    return-object p1

    :pswitch_4
    new-array p1, p1, [Landroidx/activity/result/ActivityResult;

    return-object p1

    :goto_0
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseIntArray;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
