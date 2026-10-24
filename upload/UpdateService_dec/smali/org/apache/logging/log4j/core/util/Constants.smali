.class public final Lorg/apache/logging/log4j/core/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ENABLE_DIRECT_ENCODERS:Z

.field public static final ENABLE_THREADLOCALS:Z

.field public static final ENCODER_BYTE_BUFFER_SIZE:I

.field public static final ENCODER_CHAR_BUFFER_SIZE:I

.field public static final FORMAT_MESSAGES_IN_BACKGROUND:Z

.field public static final FORMAT_MESSAGES_PATTERN_DISABLE_LOOKUPS:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INITIAL_REUSABLE_MESSAGE_SIZE:I

.field public static final IS_WEB_APP:Z

.field public static final JNDI_CONTEXT_NAME:Ljava/lang/String; = "java:comp/env/log4j/context-name"

.field public static final LOG4J_CONTEXT_SELECTOR:Ljava/lang/String; = "Log4jContextSelector"

.field public static final LOG4J_DEFAULT_STATUS_LEVEL:Ljava/lang/String; = "Log4jDefaultStatusLevel"

.field public static final LOG4J_LOG_EVENT_FACTORY:Ljava/lang/String; = "Log4jLogEventFactory"

.field public static final MAX_REUSABLE_MESSAGE_SIZE:I

.field public static final MILLIS_IN_SECONDS:I = 0x3e8

.field public static final SCRIPT_LANGUAGES:Ljava/lang/String; = "log4j2.Script.enableLanguages"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j.format.msg.async"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->FORMAT_MESSAGES_IN_BACKGROUND:Z

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.formatMsgNoLookups"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->FORMAT_MESSAGES_PATTERN_DISABLE_LOOKUPS:Z

    .line 80
    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->IS_WEB_APP:Z

    sput-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->IS_WEB_APP:Z

    .line 90
    sget-boolean v0, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    sput-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_THREADLOCALS:Z

    .line 103
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.enable.direct.encoders"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/core/util/Constants;->ENABLE_DIRECT_ENCODERS:Z

    .line 115
    const-string v0, "log4j.initialReusableMsgSize"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Constants;->size(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/Constants;->INITIAL_REUSABLE_MESSAGE_SIZE:I

    .line 126
    const-string v0, "log4j.maxReusableMsgSize"

    const/16 v1, 0x206

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Constants;->size(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    .line 135
    const-string v0, "log4j.encoder.charBufferSize"

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Constants;->size(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_CHAR_BUFFER_SIZE:I

    .line 145
    const-string v0, "log4j.encoder.byteBufferSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/util/Constants;->size(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/core/util/Constants;->ENCODER_BYTE_BUFFER_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static size(Ljava/lang/String;I)I
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "property",
            "defaultValue"
        }
    .end annotation

    .line 149
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
