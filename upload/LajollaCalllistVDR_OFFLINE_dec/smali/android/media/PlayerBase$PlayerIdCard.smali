.class public Landroid/media/PlayerBase$PlayerIdCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerIdCard"
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFINED:I = 0x1

.field public static final AUDIO_ATTRIBUTES_NONE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/PlayerBase$PlayerIdCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mIPlayer:Landroid/media/IPlayer;

.field public final mPlayerType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/PlayerBase$PlayerIdCard$1;

    invoke-direct {v0}, Landroid/media/PlayerBase$PlayerIdCard$1;-><init>()V

    sput-object v0, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Don\'t support this method, just for stub"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t support this method, just for stub"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
