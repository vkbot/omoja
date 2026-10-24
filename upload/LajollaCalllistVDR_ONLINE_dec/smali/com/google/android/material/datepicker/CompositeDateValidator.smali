.class public final Lcom/google/android/material/datepicker/CompositeDateValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/CompositeDateValidator;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/material/datepicker/c;

.field public static final e:Lcom/google/android/material/datepicker/d;


# instance fields
.field public final b:Lcom/google/android/material/datepicker/f;

.field public final c:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/c;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->d:Lcom/google/android/material/datepicker/c;

    new-instance v0, Lcom/google/android/material/datepicker/d;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/d;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->e:Lcom/google/android/material/datepicker/d;

    new-instance v0, Lcom/google/android/material/datepicker/e;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/e;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/CompositeDateValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/google/android/material/datepicker/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->b:Lcom/google/android/material/datepicker/f;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/CompositeDateValidator;

    iget-object v1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->b:Lcom/google/android/material/datepicker/f;

    invoke-interface {v1}, Lcom/google/android/material/datepicker/f;->a()I

    move-result v1

    iget-object p1, p1, Lcom/google/android/material/datepicker/CompositeDateValidator;->b:Lcom/google/android/material/datepicker/f;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/f;->a()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f(J)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->b:Lcom/google/android/material/datepicker/f;

    iget-object v1, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/material/datepicker/f;->b(Ljava/util/List;J)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/google/android/material/datepicker/CompositeDateValidator;->b:Lcom/google/android/material/datepicker/f;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/f;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
