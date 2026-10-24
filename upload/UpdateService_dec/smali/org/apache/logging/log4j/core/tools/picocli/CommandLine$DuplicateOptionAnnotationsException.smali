.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;
.super Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DuplicateOptionAnnotationsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2e8fcf26b57fed39L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 4783
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/reflect/Field;
    .param p2, "x2"    # Ljava/lang/reflect/Field;

    .line 4781
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;->create(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "field1"    # Ljava/lang/reflect/Field;
    .param p2, "field2"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "field1",
            "field2"
        }
    .end annotation

    .line 4786
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Option name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' is used by both "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4787
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4788
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$DuplicateOptionAnnotationsException;-><init>(Ljava/lang/String;)V

    .line 4786
    return-object v0
.end method
