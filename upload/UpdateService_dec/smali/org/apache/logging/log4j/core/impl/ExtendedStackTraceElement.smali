.class public final Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
.super Ljava/lang/Object;
.source "ExtendedStackTraceElement.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

.field private static final serialVersionUID:J = -0x1e21304539496ff9L


# instance fields
.field private final extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

.field private final stackTraceElement:Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    sput-object v0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;)V
    .locals 0
    .param p1, "stackTraceElement"    # Ljava/lang/StackTraceElement;
    .param p2, "extraClassInfo"    # Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "stackTraceElement",
            "extraClassInfo"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    .line 49
    iput-object p2, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "declaringClass"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I
    .param p5, "exact"    # Z
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "declaringClass",
            "methodName",
            "fileName",
            "lineNumber",
            "exact",
            "location",
            "version"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-direct {v1, p5, p6, p7}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;-><init>(Ljava/lang/StackTraceElement;Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;)V

    .line 59
    return-void
.end method

.method private render(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 6
    .param p1, "stElement"    # Ljava/lang/StackTraceElement;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .param p3, "textRenderer"    # Lorg/apache/logging/log4j/core/pattern/TextRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "stElement",
            "output",
            "textRenderer"
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 136
    .local v1, "lineNumber":I
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackTraceElement.ClassName"

    invoke-interface {p3, v2, p2, v3}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 137
    const-string v2, "."

    const-string v3, "StackTraceElement.ClassMethodSeparator"

    invoke-interface {p3, v2, p2, v3}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackTraceElement.MethodName"

    invoke-interface {p3, v2, p2, v3}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const-string v2, "(Native Method)"

    const-string v3, "StackTraceElement.NativeMethod"

    invoke-interface {p3, v2, p2, v3}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    const-string v2, "StackTraceElement.FileName"

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "StackTraceElement.Container"

    if-eqz v0, :cond_1

    if-ltz v1, :cond_1

    .line 142
    invoke-interface {p3, v4, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 143
    invoke-interface {p3, v0, p2, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 144
    const-string v2, ":"

    const-string v4, "StackTraceElement.ContainerSeparator"

    invoke-interface {p3, v2, p2, v4}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "StackTraceElement.LineNumber"

    invoke-interface {p3, v2, p2, v4}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 146
    invoke-interface {p3, v3, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    .line 148
    invoke-interface {p3, v4, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 149
    invoke-interface {p3, v0, p2, v2}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 150
    invoke-interface {p3, v3, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {p3, v4, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 153
    const-string v2, "Unknown Source"

    const-string v4, "StackTraceElement.UnknownSource"

    invoke-interface {p3, v2, p2, v4}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 154
    invoke-interface {p3, v3, p2, v5}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 156
    :goto_0
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

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 67
    return v1

    .line 69
    :cond_1
    instance-of v2, p1, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    if-nez v2, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;

    .line 73
    .local v2, "other":Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    return v1

    .line 76
    :cond_3
    iget-object v3, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    iget-object v4, v2, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 77
    return v1

    .line 79
    :cond_4
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExact()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->getExact()Z

    move-result v0

    return v0
.end method

.method public getExtraClassInfo()Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNativeMethod()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    return v0
.end method

.method renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V
    .locals 2
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

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->stackTraceElement:Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->render(Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 129
    const-string v0, " "

    const-string v1, "Text"

    invoke-interface {p2, v0, p1, v1}, Lorg/apache/logging/log4j/core/pattern/TextRenderer;->render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->extraClassInfo:Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;

    invoke-virtual {v0, p1, p2}, Lorg/apache/logging/log4j/core/impl/ExtendedClassInfo;->renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;->getInstance()Lorg/apache/logging/log4j/core/pattern/PlainTextRenderer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/core/impl/ExtendedStackTraceElement;->renderOn(Ljava/lang/StringBuilder;Lorg/apache/logging/log4j/core/pattern/TextRenderer;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
