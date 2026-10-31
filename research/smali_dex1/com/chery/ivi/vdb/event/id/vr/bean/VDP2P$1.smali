.class Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P$1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;
    .registers 4

    .line 1
    new-instance v0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;-><init>(Landroid/os/Parcel;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0, p1}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P$1;->createFromParcel(Landroid/os/Parcel;)Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;
    .registers 2

    .line 6
    new-array p1, p1, [Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P$1;->newArray(I)[Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
