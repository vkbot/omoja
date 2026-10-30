.class public Lcom/mega/nexus/hardware/display/MegaDisplayManager;
.super Ljava/lang/Object;
.source "MegaDisplayManager.java"


# static fields
.field public static final SCREEN_TYPE_CEILING:I = 0x7

.field public static final SCREEN_TYPE_HUD:I = 0x5

.field public static final SCREEN_TYPE_INSTRUMENT:I = 0x1

.field public static final SCREEN_TYPE_LEFT_REAR:I = 0x8

.field public static final SCREEN_TYPE_MAIN:I = 0x2

.field public static final SCREEN_TYPE_MID_REAR:I = 0xa

.field public static final SCREEN_TYPE_PASSENGER:I = 0x3

.field public static final SCREEN_TYPE_RIGHT_REAR:I = 0x9

.field public static final SCREEN_TYPE_UNKNOWN:I = -0x1

.field public static final SCREEN_TYPE_VEHICLE:I = 0x4

.field public static final SCREEN_TYPE_VPA:I = 0x6

.field public static final VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDisplayIdForScreenType(Landroid/hardware/display/DisplayManager;I)I
    .locals 1
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p1, "screenType"    # I

    .line 43
    invoke-static {p0, p1}, Lcom/mega/nexus/hardware/display/MegaDisplayManagerAdapter;->getDefaultDisplayIdForScreenType(Landroid/hardware/display/DisplayManager;I)I

    move-result v0

    return v0
.end method

.method public static getDisplayIdsForScreenType(Landroid/hardware/display/DisplayManager;I)[I
    .locals 1
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p1, "screenType"    # I

    .line 31
    invoke-static {p0, p1}, Lcom/mega/nexus/hardware/display/MegaDisplayManagerAdapter;->getDisplayIdsForScreenType(Landroid/hardware/display/DisplayManager;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getScreenTypeForDisplayId(Landroid/hardware/display/DisplayManager;I)I
    .locals 1
    .param p0, "displayManager"    # Landroid/hardware/display/DisplayManager;
    .param p1, "displayId"    # I

    .line 55
    invoke-static {p0, p1}, Lcom/mega/nexus/hardware/display/MegaDisplayManagerAdapter;->getScreenTypeForDisplayId(Landroid/hardware/display/DisplayManager;I)I

    move-result v0

    return v0
.end method

.method public static screenTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "screenType"    # I

    .line 66
    invoke-static {p0}, Lcom/mega/nexus/hardware/display/MegaDisplayManagerAdapter;->screenTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
