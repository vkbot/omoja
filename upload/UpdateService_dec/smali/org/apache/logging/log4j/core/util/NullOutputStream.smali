.class public Lorg/apache/logging/log4j/core/util/NullOutputStream;
.super Ljava/io/OutputStream;
.source "NullOutputStream.java"


# static fields
.field private static final INSTANCE:Lorg/apache/logging/log4j/core/util/NullOutputStream;

.field public static final NULL_OUTPUT_STREAM:Lorg/apache/logging/log4j/core/util/NullOutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/logging/log4j/core/util/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/util/NullOutputStream;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/util/NullOutputStream;->INSTANCE:Lorg/apache/logging/log4j/core/util/NullOutputStream;

    .line 40
    sput-object v0, Lorg/apache/logging/log4j/core/util/NullOutputStream;->NULL_OUTPUT_STREAM:Lorg/apache/logging/log4j/core/util/NullOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    return-void
.end method

.method public static getInstance()Lorg/apache/logging/log4j/core/util/NullOutputStream;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/logging/log4j/core/util/NullOutputStream;->INSTANCE:Lorg/apache/logging/log4j/core/util/NullOutputStream;

    return-object v0
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .line 79
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .line 68
    return-void
.end method
