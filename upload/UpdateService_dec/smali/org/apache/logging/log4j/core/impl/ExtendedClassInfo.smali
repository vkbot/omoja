.class public final Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
.super Ljava/lang/Object;
.source "ExtendedClassInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final exact:Z

.field private final location:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exact"    # Z
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "exact",
            "location",
            "version"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    .line 47
    iput-object p2, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    .line 49
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

    .line 53
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 57
    return v1

    .line 59
    :cond_1
    instance-of v2, p1, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    if-nez v2, :cond_2

    .line 60
    return v1

    .line 62
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    .line 63
    .local v2, "other":Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    iget-boolean v3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    iget-boolean v4, v2, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    if-eq v3, v4, :cond_3

    .line 64
    return v1

    .line 66
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    return v1

    .line 69
    :cond_4
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 70
    return v1

    .line 72
    :cond_5
    return v0
.end method

.method public getExact()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 3
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .param p2, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "output",
            "textRenderer"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->exact:Z

    if-nez v0, :cond_0

    .line 94
    const-string v0, "~"

    const-string v1, "ExtraClassInfo.Inexact"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string v0, "["

    const-string v1, "ExtraClassInfo.Container"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->location:Ljava/lang/String;

    const-string v2, "ExtraClassInfo.Location"

    invoke-interface {p2, v0, p1, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 98
    const-string v0, ":"

    const-string v2, "ExtraClassInfo.ContainerSeparator"

    invoke-interface {p2, v0, p1, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->version:Ljava/lang/String;

    const-string v2, "ExtraClassInfo.Version"

    invoke-interface {p2, v0, p1, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 100
    const-string v0, "]"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
