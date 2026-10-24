.class public Lorg/apache/logging/log4j/core/net/Priority;
.super Ljava/lang/Object;
.source "Priority.java"


# instance fields
.field private final facility:Lorg/apache/logging/log4j/core/net/Facility;

.field private final severity:Lorg/apache/logging/log4j/core/net/Severity;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/core/net/Severity;)V
    .locals 0
    .param p1, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p2, "severity"    # Lorg/apache/logging/log4j/core/net/Severity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "facility",
            "severity"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/logging/log4j/core/net/Priority;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    .line 36
    iput-object p2, p0, Lorg/apache/logging/log4j/core/net/Priority;->severity:Lorg/apache/logging/log4j/core/net/Severity;

    .line 37
    return-void
.end method

.method public static getPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/Level;)I
    .locals 1
    .param p0, "facility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "facility",
            "level"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lorg/apache/logging/log4j/core/net/Severity;->getSeverity(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/net/Severity;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/logging/log4j/core/net/Priority;->toPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/core/net/Severity;)I

    move-result v0

    return v0
.end method

.method private static toPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/core/net/Severity;)I
    .locals 2
    .param p0, "aFacility"    # Lorg/apache/logging/log4j/core/net/Facility;
    .param p1, "aSeverity"    # Lorg/apache/logging/log4j/core/net/Severity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "aFacility",
            "aSeverity"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/Facility;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/net/Severity;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getFacility()Lorg/apache/logging/log4j/core/net/Facility;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/Priority;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    return-object v0
.end method

.method public getSeverity()Lorg/apache/logging/log4j/core/net/Severity;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/Priority;->severity:Lorg/apache/logging/log4j/core/net/Severity;

    return-object v0
.end method

.method public getValue()I
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/apache/logging/log4j/core/net/Priority;->facility:Lorg/apache/logging/log4j/core/net/Facility;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/net/Priority;->severity:Lorg/apache/logging/log4j/core/net/Severity;

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/net/Priority;->toPriority(Lorg/apache/logging/log4j/core/net/Facility;Lorg/apache/logging/log4j/core/net/Severity;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/net/Priority;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
