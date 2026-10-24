.class public Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;
.super Ljava/lang/Object;
.source "ValidHostValidator.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/ConstraintValidator<",
        "Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
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

    .line 33
    check-cast p1, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;

    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;)V

    return-void
.end method

.method public initialize(Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;)V
    .locals 0
    .param p1, "annotation"    # Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;

    .line 42
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

    .line 46
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 47
    sget-object v1, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;->message()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 48
    return v0

    .line 50
    :cond_0
    instance-of v1, p2, Ljava/net/InetAddress;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 52
    return v2

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return v2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->LOGGER:Lorg/apache/logging/log4j/Logger;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/config/plugins/validation/validators/ValidHostValidator;->annotation:Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidHost;->message()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return v0
.end method
