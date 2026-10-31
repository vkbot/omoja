.class public final Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final enable:Z

.field private final functionId:I

.field private final position:Ljava/lang/String;

.field private final respondId:Ljava/lang/String;

.field private final resultCode:I

.field private final semanticType:Ljava/lang/String;

.field private final time:Ljava/lang/String;

.field private final unique:Ljava/lang/String;

.field private final user:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->semanticType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->functionId:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->value:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-boolean v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->enable:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->time:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->resultCode:I

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->respondId:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->position:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->user:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->unique:Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 70
    invoke-direct/range {v0 .. v10}, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->semanticType:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->functionId:I

    .line 74
    iput-object p3, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->value:Ljava/lang/String;

    .line 75
    iput-boolean p4, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->enable:Z

    .line 76
    iput-object p5, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->time:Ljava/lang/String;

    .line 77
    iput p6, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->resultCode:I

    .line 78
    iput-object p7, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->respondId:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->position:Ljava/lang/String;

    .line 80
    iput-object p9, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->user:Ljava/lang/String;

    .line 81
    iput-object p10, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->unique:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->semanticType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->functionId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->value:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->enable:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->time:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->resultCode:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->respondId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->position:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->user:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/chery/ivi/vdb/event/id/vr/bean/VDP2P;->unique:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
