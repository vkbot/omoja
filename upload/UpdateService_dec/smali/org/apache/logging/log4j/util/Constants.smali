.class public final Lorg/apache/logging/log4j/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final ENABLE_THREADLOCALS:Z

.field public static final IS_WEB_APP:Z

.field public static final JAVA_MAJOR_VERSION:I

.field public static final LOG4J2_DEBUG:Ljava/lang/String; = "log4j2.debug"

.field public static final MAX_REUSABLE_MESSAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    .line 31
    const-string v1, "javax.servlet.Servlet"

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Constants;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 32
    const-string v1, "jakarta.servlet.Servlet"

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Constants;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 30
    :goto_1
    const-string v4, "log4j2.is.webapp"

    invoke-virtual {v0, v4, v1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/apache/logging/log4j/util/Constants;->IS_WEB_APP:Z

    .line 41
    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    const-string v1, "log4j2.enable.threadlocals"

    invoke-virtual {v0, v1, v2}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    sput-boolean v2, Lorg/apache/logging/log4j/util/Constants;->ENABLE_THREADLOCALS:Z

    .line 47
    invoke-static {}, Lorg/apache/logging/log4j/util/Constants;->getMajorVersion()I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/util/Constants;->JAVA_MAJOR_VERSION:I

    .line 58
    const/16 v0, 0x206

    const-string v1, "log4j.maxReusableMsgSize"

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/util/Constants;->size(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/logging/log4j/util/Constants;->MAX_REUSABLE_MESSAGE_SIZE:I

    .line 92
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 97
    new-array v0, v3, [B

    sput-object v0, Lorg/apache/logging/log4j/util/Constants;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static getMajorVersion()I
    .locals 1

    .line 106
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Constants;->getMajorVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static getMajorVersion(Ljava/lang/String;)I
    .locals 5
    .param p0, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "version"
        }
    .end annotation

    .line 110
    const-string v0, "-|\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    .local v2, "token":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    .line 115
    .local v4, "isJEP223":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 116
    return v2

    .line 118
    :cond_1
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 119
    .end local v2    # "token":I
    .end local v4    # "isJEP223":Z
    :catch_0
    move-exception v2

    .line 120
    .local v2, "ex":Ljava/lang/Exception;
    return v1
.end method

.method private static isClassAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/apache/logging/log4j/util/LoaderUtil;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Throwable;
    return v0
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

    .line 72
    invoke-static {}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getProperties()Lorg/apache/logging/log4j/util/PropertiesUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/logging/log4j/util/PropertiesUtil;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
