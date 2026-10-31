.class public final Lx1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lx1/a;


# instance fields
.field public b:Lw1/e;

.field public c:F

.field public d:F

.field public final e:F

.field public final f:F

.field public final g:I

.field public final h:Lx1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx1/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx1/b;->CREATOR:Lx1/a;

    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(FFFI)V
    .locals 6

    .line 18
    sget-object v5, Lx1/c;->c:Lx1/c;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v3, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lx1/b;-><init>(FFIFLx1/c;)V

    return-void
.end method

.method public constructor <init>(FFIFLx1/c;)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p4, p0, Lx1/b;->c:F

    .line 8
    .line 9
    iput p1, p0, Lx1/b;->e:F

    .line 10
    .line 11
    iput p2, p0, Lx1/b;->f:F

    .line 12
    .line 13
    iput p3, p0, Lx1/b;->g:I

    .line 14
    .line 15
    iput-object p5, p0, Lx1/b;->h:Lx1/c;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q(Lw1/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx1/b;->b:Lw1/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lx1/b;->b:Lw1/e;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p1, "This instance of Section is already attached to a Gauge."

    .line 9
    .line 10
    invoke-static {p1}, Lj1/i;->k(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lx1/b;->e:F

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 7
    .line 8
    .line 9
    iget p2, p0, Lx1/b;->f:F

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lx1/b;->g:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget p2, p0, Lx1/b;->c:F

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lx1/b;->h:Lx1/c;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 35
    .line 36
    .line 37
    iget p2, p0, Lx1/b;->d:F

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
