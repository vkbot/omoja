.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$Builder;
    }
.end annotation


# static fields
.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final METADATA_KEY_CLOCK:Ljava/lang/String; = "android.hardware.radio.metadata.CLOCK"

.field public static final METADATA_KEY_DAB_COMPONENT_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

.field public static final METADATA_KEY_DAB_COMPONENT_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

.field public static final METADATA_KEY_DAB_ENSEMBLE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

.field public static final METADATA_KEY_DAB_ENSEMBLE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

.field public static final METADATA_KEY_DAB_SERVICE_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME"

.field public static final METADATA_KEY_DAB_SERVICE_NAME_SHORT:Ljava/lang/String; = "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final METADATA_KEY_PROGRAM_NAME:Ljava/lang/String; = "android.hardware.radio.metadata.PROGRAM_NAME"

.field public static final METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
