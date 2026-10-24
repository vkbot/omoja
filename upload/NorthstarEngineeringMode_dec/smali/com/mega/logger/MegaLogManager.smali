.class public Lcom/mega/logger/MegaLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_ID_ALL:I = 0x0

.field public static final LOG_ID_ANDROID:I = 0x1

.field public static final LOG_ID_MCU:I = 0x5

.field public static final LOG_ID_QNX:I = 0x2

.field public static final LOG_ID_S32G:I = 0x3

.field public static final LOG_ID_TBOX:I = 0x4

.field public static final LOG_LEVEL_DEBUG:I = 0x5

.field public static final LOG_LEVEL_ERROR:I = 0x2

.field public static final LOG_LEVEL_FATAL:I = 0x1

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x6

.field public static final LOG_LEVEL_WARN:I = 0x3


# instance fields
.field private megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mega/logger/MegaLoggerNative;

    invoke-direct {v0}, Lcom/mega/logger/MegaLoggerNative;-><init>()V

    iput-object v0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    return-void
.end method


# virtual methods
.method public clearLog(I)Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1}, Lcom/mega/logger/MegaLoggerNative;->clearLog(I)Z

    move-result p0

    return p0
.end method

.method public isUsbConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0}, Lcom/mega/logger/MegaLoggerNative;->isUsbConnected()Z

    move-result p0

    return p0
.end method

.method public notifyDisconnected(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1}, Lcom/mega/logger/MegaLoggerNative;->notifyDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public saveLogToPath(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1, p2}, Lcom/mega/logger/MegaLoggerNative;->saveLogToPath(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public saveToUsb()Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0}, Lcom/mega/logger/MegaLoggerNative;->saveToUsb()Z

    move-result p0

    return p0
.end method

.method public setLogLevel(II)Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1, p2}, Lcom/mega/logger/MegaLoggerNative;->setLogLevel(II)Z

    move-result p0

    return p0
.end method

.method public usbConnected(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1}, Lcom/mega/logger/MegaLoggerNative;->usbConnected(Ljava/lang/String;)V

    return-void
.end method

.method public usbDisconnected(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mega/logger/MegaLogManager;->megaLoggerNative:Lcom/mega/logger/MegaLoggerNative;

    invoke-virtual {p0, p1}, Lcom/mega/logger/MegaLoggerNative;->usbDisconnected(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
