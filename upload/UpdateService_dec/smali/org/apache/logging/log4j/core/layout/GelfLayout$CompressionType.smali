.class public abstract enum Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
.super Ljava/lang/Enum;
.source "GelfLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/GelfLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "CompressionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

.field public static final enum GZIP:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

.field public static final enum OFF:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

.field public static final enum ZLIB:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$1;

    const-string v1, "GZIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->GZIP:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 83
    new-instance v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$2;

    const-string v1, "ZLIB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->ZLIB:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 89
    new-instance v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$3;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->OFF:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    .line 75
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    sget-object v5, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->GZIP:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    aput-object v5, v1, v2

    sget-object v2, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->ZLIB:Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->$VALUES:[Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/logging/log4j/core/layout/GelfLayout$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/layout/GelfLayout$1;

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 75
    const-class v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    return-object v0
.end method

.method public static values()[Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->$VALUES:[Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    invoke-virtual {v0}, [Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/layout/GelfLayout$CompressionType;

    return-object v0
.end method


# virtual methods
.method public abstract createDeflaterOutputStream(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
