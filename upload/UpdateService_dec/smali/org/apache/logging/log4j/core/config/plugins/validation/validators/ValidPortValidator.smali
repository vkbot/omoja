.class public Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;
.super Ljava/lang/Object;
.source "ValidPortValidator.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialize(Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;)V

    return-void
.end method

.method public initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;)V
    .locals 0
    .param p1, "annotation"    # Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;

    .line 39
    return-void
.end method

.method public isValid(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
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

    .line 43
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/plugins/convert/TypeConverters;->convert(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->isValid(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 46
    :cond_0
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;->message()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 48
    return v1

    .line 50
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    .local v0, "port":I
    if-ltz v0, :cond_3

    const v2, 0xffff

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 52
    :cond_3
    :goto_0
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidPortValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;->message()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 53
    return v1
.end method
