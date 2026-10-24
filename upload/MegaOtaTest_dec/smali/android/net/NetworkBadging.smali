.class public Landroid/net/NetworkBadging;
.super Ljava/lang/Object;
.source "NetworkBadging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkBadging$Badging;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BADGING_4K:I = 0x1e

.field public static final BADGING_HD:I = 0x14

.field public static final BADGING_NONE:I = 0x0

.field public static final BADGING_SD:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "signalLevel"    # I
    .param p1, "badging"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
