.class public Lcom/mega/nexus/view/MegaKeyEvent;
.super Ljava/lang/Object;
.source "MegaKeyEvent.java"


# static fields
.field public static KEYCODE_FAREWELL:I

.field public static KEYCODE_SCREEN_POWER_OFF:I

.field public static KEYCODE_VIEW:I

.field public static KEYCODE_WELCOME:I

.field public static KEYCODE_WHEEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    sget v0, Lcom/mega/nexus/view/MegaKeyEventAdapter;->KEYCODE_WELCOME:I

    sput v0, Lcom/mega/nexus/view/MegaKeyEvent;->KEYCODE_WELCOME:I

    .line 5
    sget v0, Lcom/mega/nexus/view/MegaKeyEventAdapter;->KEYCODE_FAREWELL:I

    sput v0, Lcom/mega/nexus/view/MegaKeyEvent;->KEYCODE_FAREWELL:I

    .line 6
    sget v0, Lcom/mega/nexus/view/MegaKeyEventAdapter;->KEYCODE_SCREEN_POWER_OFF:I

    sput v0, Lcom/mega/nexus/view/MegaKeyEvent;->KEYCODE_SCREEN_POWER_OFF:I

    .line 8
    sget v0, Lcom/mega/nexus/view/MegaKeyEventAdapter;->KEYCODE_VIEW:I

    sput v0, Lcom/mega/nexus/view/MegaKeyEvent;->KEYCODE_VIEW:I

    .line 9
    sget v0, Lcom/mega/nexus/view/MegaKeyEventAdapter;->KEYCODE_WHEEL:I

    sput v0, Lcom/mega/nexus/view/MegaKeyEvent;->KEYCODE_WHEEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
