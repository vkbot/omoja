.class public Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;
.super Ljava/lang/Object;
.source "RequiredValidator.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private err(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 57
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bridge synthetic initialize(Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "anAnnotation"
        }
    .end annotation

    .line 40
    check-cast p1, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;)V

    return-void
.end method

.method public initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;)V
    .locals 0
    .param p1, "anAnnotation"    # Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anAnnotation"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;

    .line 49
    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 53
    invoke-static {p2}, Lorg/apache/logging/log4j/core/util/Assert;->isNonEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/RequiredValidator;->err(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
