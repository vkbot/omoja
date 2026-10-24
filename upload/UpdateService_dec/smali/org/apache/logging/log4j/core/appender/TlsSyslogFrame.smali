.class public Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;
.super Ljava/lang/Object;
.source "TlsSyslogFrame.java"


# instance fields
.field private final byteLength:I

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 36
    .local v0, "messageBytes":[B
    array-length v1, v0

    iput v1, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->byteLength:I

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 59
    return v1

    .line 61
    :cond_1
    instance-of v2, p1, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;

    if-nez v2, :cond_2

    .line 62
    return v1

    .line 64
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;

    .line 65
    .local v2, "other":Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    return v1

    .line 68
    :cond_3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->byteLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/TlsSyslogFrame;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
